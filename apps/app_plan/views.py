from django.shortcuts import get_object_or_404
from rest_framework import generics
from .models import (
    FileProgressPhase, MeetingRecord, ProjectValueRatio, ProjectValueRatiosHistory, Plan, PlansHistory,  PlansProgress, 
    MasterPlan, MasterPlansHistory, MasterPlanProgress,
    PlanWeight, PlanAssociation, PlanTotalEnergyProduction,
    ProjectLoopEnergyProduction, ProjectCaseEnergyProduction, EnergyProductionSeries, EnergyProductionRatio, FileProgress
)
from .serializers import (
    FileProgressPhaseSerializer, MeetingRecordSerializer, ProjectValueRatioSerializer, ProjectValueRatiosHistorySerializer, PlanSerializer, PlansHistorySerializer, PlansProgressSerializer, 
    MasterPlanSerializer, MasterPlansHistorySerializer, MasterPlanProgressSerializer,
    PlanWeightSerializer, PlanAssociationSerializer, PlanTotalEnergyProductionSerializer,
    ProjectLoopEnergyProductionSerializer, ProjectCaseEnergyProductionSerializer, 
    EnergyProductionSeriesSerializer, EnergyProductionRatioSerializer, FileProgressSerializer
)

#region 專案價金比例 ProjectValueRatio Views
class ProjectValueRatioList(generics.ListCreateAPIView):
    queryset = ProjectValueRatio.objects.all()
    serializer_class = ProjectValueRatioSerializer

class ProjectValueRatioDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectValueRatio.objects.all()
    serializer_class = ProjectValueRatioSerializer
#endregion

#region 專案價金比例歷史 ProjectValueRatiosHistory Views
class ProjectValueRatiosHistoryList(generics.ListCreateAPIView):
    queryset = ProjectValueRatiosHistory.objects.all()
    serializer_class = ProjectValueRatiosHistorySerializer

class ProjectValueRatiosHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectValueRatiosHistory.objects.all()
    serializer_class = ProjectValueRatiosHistorySerializer
#endregion

#region 計畫 Plan Views
class PlanList(generics.ListCreateAPIView):
    queryset = Plan.objects.all()
    serializer_class = PlanSerializer

class PlanDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Plan.objects.all()
    serializer_class = PlanSerializer
#endregion
    
#region 計畫歷史 PlansHistory Views
class PlansHistoryList(generics.ListCreateAPIView):
    queryset = PlansHistory.objects.all()
    serializer_class = PlansHistorySerializer

class PlansHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PlansHistory.objects.all()
    serializer_class = PlansHistorySerializer
#endregion 

#region 計畫進度 PlansProgress Views
class PlansProgressList(generics.ListCreateAPIView):
    queryset = PlansProgress.objects.all()
    serializer_class = PlansProgressSerializer

class PlansProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PlansProgress.objects.all()
    serializer_class = PlansProgressSerializer
# endregion

#region 總體計畫 MasterPlan Views
class MasterPlanList(generics.ListCreateAPIView):
    queryset = MasterPlan.objects.all()
    serializer_class = MasterPlanSerializer

class MasterPlanDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = MasterPlan.objects.all()
    serializer_class = MasterPlanSerializer
#endregion
 
#region 統體計畫歷史
class MasterPlansHistoryList(generics.ListCreateAPIView):
    queryset = MasterPlansHistory.objects.all()
    serializer_class = MasterPlansHistorySerializer

class MasterPlansHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = MasterPlansHistory.objects.all()
    serializer_class = MasterPlansHistorySerializer
#endregion
    
#region 統體計畫實際進度
class MasterPlanProgressList(generics.ListCreateAPIView):
    queryset = MasterPlanProgress.objects.all()
    serializer_class = MasterPlanProgressSerializer

class MasterPlanProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = MasterPlanProgress.objects.all()
    serializer_class = MasterPlanProgressSerializer
#endregion
    
#region 計畫比例
class PlanWeightList(generics.ListCreateAPIView):
    queryset = PlanWeight.objects.all()
    serializer_class = PlanWeightSerializer

class PlanWeightDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PlanWeight.objects.all()
    serializer_class = PlanWeightSerializer
#endregion
    
#region 計畫關聯
class PlanAssociationList(generics.ListCreateAPIView):
    queryset = PlanAssociation.objects.all()
    serializer_class = PlanAssociationSerializer

class PlanAssociationDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PlanAssociation.objects.all()
    serializer_class = PlanAssociationSerializer
#endregion
    
#region 計畫發電量
class PlanTotalEnergyProductionList(generics.ListCreateAPIView):
    queryset = PlanTotalEnergyProduction.objects.all()
    serializer_class = PlanTotalEnergyProductionSerializer

class PlanTotalEnergyProductionDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PlanTotalEnergyProduction.objects.all()
    serializer_class = PlanTotalEnergyProductionSerializer
#endregion
    
#region 迴路發電量
class ProjectLoopEnergyProductionList(generics.ListCreateAPIView):
    queryset = ProjectLoopEnergyProduction.objects.all()
    serializer_class = ProjectLoopEnergyProductionSerializer

class ProjectLoopEnergyProductionDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectLoopEnergyProduction.objects.all()
    serializer_class = ProjectLoopEnergyProductionSerializer
#endregion
    
#region 案場發電量
class ProjectCaseEnergyProductionList(generics.ListCreateAPIView):
    queryset = ProjectCaseEnergyProduction.objects.all()
    serializer_class = ProjectCaseEnergyProductionSerializer

class ProjectCaseEnergyProductionDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectCaseEnergyProduction.objects.all()
    serializer_class = ProjectCaseEnergyProductionSerializer
#endregion

#region 發電量比例系列
class EnergyProductionSeriesList(generics.ListCreateAPIView):
    queryset = EnergyProductionSeries.objects.all()
    serializer_class = EnergyProductionSeriesSerializer

class EnergyProductionSeriesDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = EnergyProductionSeries.objects.all()
    serializer_class = EnergyProductionSeriesSerializer
#endregion

#region 發電量比例系列
class EnergyProductionRatioList(generics.ListCreateAPIView):
    queryset = EnergyProductionRatio.objects.all()
    serializer_class = EnergyProductionRatioSerializer

class EnergyProductionRatioDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = EnergyProductionRatio.objects.all()
    serializer_class = EnergyProductionRatioSerializer
#endregion

#region 文件連結管理
class FileProgressList(generics.ListCreateAPIView):
    queryset = FileProgress.objects.all()
    serializer_class = FileProgressSerializer

class FileProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = FileProgress.objects.all()
    serializer_class = FileProgressSerializer
#endregion
    

#region 文件連結管理
class FileProgressPhaseList(generics.ListCreateAPIView):
    queryset = FileProgressPhase.objects.all()
    serializer_class = FileProgressPhaseSerializer

class FileProgressPhaseDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = FileProgressPhase.objects.all()
    serializer_class = FileProgressPhaseSerializer
#endregion
    
#region 會議連結管理
class MeetingRecordList(generics.ListCreateAPIView):
    queryset = MeetingRecord.objects.all()
    serializer_class = MeetingRecordSerializer

class MeetingRecordDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = MeetingRecord.objects.all()
    serializer_class = MeetingRecordSerializer
#endregion
    
