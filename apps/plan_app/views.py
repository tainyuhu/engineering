from rest_framework import generics, mixins
from django.db.models import Q
from rest_framework.response import Response
from rest_framework import status
from .models import ProjectCase, Plan , Project ,ProjectLoop ,Power ,ProjectProportion ,ProjectTask
from .serializers import ProjectCaseSerializer, PlanSerializer, ProjectSerializer ,ProjectLoopSerializer ,PowerSerializer,ProjectProportionSerializer,ProjectTaskSerializer

class PlanList(generics.ListCreateAPIView):
    queryset = Plan.objects.all()
    serializer_class = PlanSerializer

class PlanDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Plan.objects.all()
    serializer_class = PlanSerializer

class PowerList(generics.ListCreateAPIView):
    queryset = Power.objects.all()
    serializer_class = PowerSerializer

class PowerDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Power.objects.all()
    serializer_class = PowerSerializer

class ProjectList(generics.ListCreateAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class ProjectDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class ProjectLoopList(generics.ListCreateAPIView):
    queryset = ProjectLoop.objects.all()
    serializer_class = ProjectLoopSerializer

class ProjectLoopDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectLoop.objects.all()
    serializer_class = ProjectLoopSerializer

class ProjectCaseList(generics.ListCreateAPIView):
    queryset = ProjectCase.objects.all()
    serializer_class = ProjectCaseSerializer

class ProjectCaseDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectCase.objects.all()
    serializer_class = ProjectCaseSerializer

class ProjectProportionList(generics.ListCreateAPIView):
    queryset = ProjectProportion.objects.all()
    serializer_class = ProjectProportionSerializer

class ProjectProportionDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectProportion.objects.all()
    serializer_class = ProjectProportionSerializer

class ProjectTaskList(generics.ListCreateAPIView):
    queryset = ProjectTask.objects.all()
    serializer_class = ProjectTaskSerializer

class ProjectTaskDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectTask.objects.all()
    serializer_class = ProjectTaskSerializer

class ProjectListByPlan(generics.ListAPIView):
    serializer_class = ProjectSerializer

    def get_queryset(self):

        plan_id = self.request.query_params.get('plan_id')
        if plan_id:
            return Project.objects.filter(plan_id=plan_id)
        else:
            return Project.objects.all()

class ProjectLoopByProject(generics.ListAPIView):
    serializer_class = ProjectLoopSerializer

    def get_queryset(self):
        project_id = self.request.query_params.get('project_id')
        if project_id:
            return Project.objects.filter(project_id=project_id)
        else:
            return Project.objects.all()

class ProjectLoopByPlan(generics.ListAPIView):
    serializer_class = ProjectLoopSerializer

    def get_queryset(self):

        plan_id = self.kwargs['plan_id']

        # 從Project找到與Plan關聯的所有Project
        projects_of_plan = Project.objects.filter(plan=plan_id)

        # 創建一個空的查詢集，用於蒐集相關的ProjectLoop
        loops_queryset = ProjectLoop.objects.none()

        # 找每個Project，蒐集有關的ProjectLoop
        for project in projects_of_plan:
            project_loops = ProjectLoop.objects.filter(project=project)
            loops_queryset = loops_queryset | project_loops

        return loops_queryset.distinct()
            

