from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from django.shortcuts import get_object_or_404
from .models import (ElectricalProgress, StageSeries, Stage, ProjectElectrical)
from .serializers import ElectricalProgressSerializer, StageSeriesSerializer, StageSerializer, ProjectElectricalSerializer

#region 步驟系列 StageSeries Views
class StageSeriesList(generics.ListCreateAPIView):
    queryset = StageSeries.objects.all()
    serializer_class = StageSeriesSerializer

class StageSeriesDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = StageSeries.objects.all()
    serializer_class = StageSeriesSerializer
#endregion

#region 步驟 Stage Views
class StageList(generics.ListCreateAPIView):
    queryset = Stage.objects.all()
    serializer_class = StageSerializer

class StageDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Stage.objects.all()
    serializer_class = StageSerializer
#endregion

#region 電業申辦 Views
class ProjectElectricalList(generics.ListCreateAPIView):
    queryset = ProjectElectrical.objects.all()
    serializer_class = ProjectElectricalSerializer

class ProjectElectricalDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectElectrical.objects.all()
    serializer_class = ProjectElectricalSerializer
#endregion

#region 電業申辦實際進度 Views
class ElectricalProgressList(generics.ListCreateAPIView):
    queryset = ElectricalProgress.objects.all()
    serializer_class = ElectricalProgressSerializer

class ElectricalProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ElectricalProgress.objects.all()
    serializer_class = ElectricalProgressSerializer
#endregion

class StagesBySeriesView(APIView):
    def get(self, request, project_id):
        loop = ProjectElectrical.objects.filter(project_id=project_id)
        series_id = loop[0].series_id
        stages = Stage.objects.filter(series_id=series_id).order_by('step_order')
        formatted_stages = {
            f"第{stage.step_order}步驟_{stage.stage_name}": f"{stage.completion_percentage * 100}"
            for stage in stages
        }
        return Response(formatted_stages)
    

class ProjectProgressView(APIView):
    def get(self, request, project_id):
        project_electricals = ProjectElectrical.objects.filter(project_id=project_id)
        result = []

        for project in project_electricals:
            latest_progress = ElectricalProgress.objects.filter(electrical_id=project.electrical_id).order_by('-electrical_week_id').first()
            
            if latest_progress:
                current_stage = get_object_or_404(Stage, stage_id=latest_progress.stage_id.stage_id)
                prev_stage = Stage.objects.filter(series=current_stage.series, step_order=current_stage.step_order - 1).first()
                next_stage = Stage.objects.filter(series=current_stage.series, step_order=current_stage.step_order + 1).first()
                
                result.append({
                    "name": project.electrical_name,
                    "currentStep": current_stage.stage_name,
                    "progress": latest_progress.progress_percentage * 100,
                    "prevStep": prev_stage.stage_name if prev_stage else "",
                    "nextStep": next_stage.stage_name if next_stage else "",
                    "selected": [""],
                    "todos": ["無事項"],
                    "doneDate": latest_progress.done_date
                })

        return Response(result)