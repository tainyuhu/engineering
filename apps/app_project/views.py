from .models import (
    Project, ProjectsProgress, ProjectsProgressExpected, ProjectLoop, LoopsHistory,
    LoopsProgress, LoopsProgressExpected, ProjectCase, CasesHistory, CasesProgress, CasesProgressExpected
)
from .serializers import (
    ProjectSerializer, ProjectsProgressSerializer, ProjectsProgressExpectedSerializer, ProjectLoopSerializer, LoopsHistorySerializer,
    LoopsProgressSerializer, LoopsProgressExpectedSerializer, ProjectCaseSerializer, CasesHistorySerializer, CasesProgressSerializer, CasesProgressExpectedSerializer
)
from rest_framework import generics

#region 專案
class ProjectList(generics.ListCreateAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class ProjectDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer
#endregion
    
#region 專案進度
class ProjectsProgressList(generics.ListCreateAPIView):
    queryset = ProjectsProgress.objects.all()
    serializer_class = ProjectsProgressSerializer

class ProjectsProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectsProgress.objects.all()
    serializer_class = ProjectsProgressSerializer    
#endregion

#region 專案預期進度
class ProjectsProgressExpectedList(generics.ListCreateAPIView):
    queryset = ProjectsProgressExpected.objects.all()
    serializer_class = ProjectsProgressExpectedSerializer

class ProjectsProgressExpectedDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectsProgressExpected.objects.all()
    serializer_class = ProjectsProgressExpectedSerializer    
#endregion
    
#region 專案迴路
class ProjectLoopList(generics.ListCreateAPIView):
    queryset = ProjectLoop.objects.all()
    serializer_class = ProjectLoopSerializer

class ProjectLoopDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectLoop.objects.all()
    serializer_class = ProjectLoopSerializer    
#endregion
    
#region 專案迴路歷史
class LoopsHistoryList(generics.ListCreateAPIView):
    queryset = LoopsHistory.objects.all()
    serializer_class = LoopsHistorySerializer

class LoopsHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = LoopsHistory.objects.all()
    serializer_class = LoopsHistorySerializer    
#endregion
    
#region 專案迴路進度
class LoopsProgressList(generics.ListCreateAPIView):
    queryset = LoopsProgress.objects.all()
    serializer_class = LoopsProgressSerializer

class LoopsProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = LoopsProgress.objects.all()
    serializer_class = LoopsProgressSerializer    
#endregion
    
#region 專案迴路預期進度
class LoopsProgressExpectedList(generics.ListCreateAPIView):
    queryset = LoopsProgressExpected.objects.all()
    serializer_class = LoopsProgressExpectedSerializer

class LoopsProgressExpectedDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = LoopsProgressExpected.objects.all()
    serializer_class = LoopsProgressExpectedSerializer    
#endregion
    
#region 專案案場
class ProjectCaseList(generics.ListCreateAPIView):
    queryset = ProjectCase.objects.all()
    serializer_class = ProjectCaseSerializer

class ProjectCaseDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectCase.objects.all()
    serializer_class = ProjectCaseSerializer    
#endregion
    
#region 專案案場歷史
class CasesHistoryList(generics.ListCreateAPIView):
    queryset = CasesHistory.objects.all()
    serializer_class = CasesHistorySerializer

class CasesHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = CasesHistory.objects.all()
    serializer_class = CasesHistorySerializer    
#endregion
    
#region 專案案場進度
class CasesProgressList(generics.ListCreateAPIView):
    queryset = CasesProgress.objects.all()
    serializer_class = CasesProgressSerializer

class CasesProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = CasesProgress.objects.all()
    serializer_class = CasesProgressSerializer    
#endregion
    
#region 專案案場預期進度
class CasesProgressExpectedList(generics.ListCreateAPIView):
    queryset = CasesProgressExpected.objects.all()
    serializer_class = CasesProgressExpectedSerializer

class CasesProgressExpectedDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = CasesProgressExpected.objects.all()
    serializer_class = CasesProgressExpectedSerializer    
#endregion
    
class ProjectLoopListByProject(generics.ListAPIView):
    serializer_class = ProjectLoopSerializer

    def get_queryset(self):

        queryset = ProjectLoop.objects.all()
        project_id = self.kwargs.get('project_id')
        if project_id is not None:
            queryset = queryset.filter(project_id=project_id)
            print(queryset.query)
        return queryset