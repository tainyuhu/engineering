import datetime
from rest_framework import generics
from .models import (
    FileProgressMonth, FileProgressPhase, MeetingRecord, PlanWeek, PlansProgressExpected, ProjectValueRatio, ProjectValueRatiosHistory, Plan, PlansHistory,  PlansProgress, 
    MasterPlan, MasterPlansHistory, MasterPlanProgress,
    PlanWeight, PlanAssociation, PlanTotalEnergyProduction,
    ProjectLoopEnergyProduction, ProjectCaseEnergyProduction, EnergyProductionSeries, EnergyProductionRatio, FileProgress
)
from .serializers import (
    FileProgressMonthSerializer, FileProgressPhaseSerializer, MeetingRecordSerializer, ProjectValueRatioSerializer, ProjectValueRatiosHistorySerializer, PlanSerializer, PlansHistorySerializer, PlansProgressSerializer, 
    MasterPlanSerializer, MasterPlansHistorySerializer, MasterPlanProgressSerializer,
    PlanWeightSerializer, PlanAssociationSerializer, PlanTotalEnergyProductionSerializer,
    ProjectLoopEnergyProductionSerializer, ProjectCaseEnergyProductionSerializer, 
    EnergyProductionSeriesSerializer, EnergyProductionRatioSerializer, FileProgressSerializer
)

from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Max
import hashlib
from django.db.models.functions import Concat
from django.db.models import Value as V
from django.db.models import CharField

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

#region 文件連結管理
class FileProgressMonthList(generics.ListCreateAPIView):
    queryset = FileProgressMonth.objects.all()
    serializer_class = FileProgressMonthSerializer

class FileProgressMonthDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = FileProgressMonth.objects.all()
    serializer_class = FileProgressMonthSerializer
#endregion
    
#region 會議連結管理
class MeetingRecordList(generics.ListCreateAPIView):
    queryset = MeetingRecord.objects.all()
    serializer_class = MeetingRecordSerializer

class MeetingRecordDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = MeetingRecord.objects.all()
    serializer_class = MeetingRecordSerializer
#endregion
    
#region 計算所有周Plan工程進度
class GetPlanProgress(APIView):
    def get(self, request, master_plan_id, currentPage, itemsPerPage):
        try:

            plans = Plan.objects.filter(master_plan_id=master_plan_id)

            date_ranges_with_data = defaultdict(list)

            progress_model = PlansProgress
            expected_model = PlansProgressExpected

            
            for plan in plans:
                progress_records = progress_model.objects.filter(plan_id=plan.plan_id).order_by('-plan_week_id')
                if progress_records.exists():
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            plan_id=plan.plan_id, 
                            plan_week_id=progress_record.plan_week_id
                        ).first()
                        if expected_record:
                            week_data = PlanWeek.objects.filter(week_id=expected_record.plan_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "project_name": plan.plan_name,
                                    "actual": progress_record.progress_percentage,
                                    "expected": expected_record.progress_percentage,
                                    "construction_status": plan.construction_status,
                                })
                else:
                    today = datetime.datetime.now().strftime("%Y-%m-%d")
                    week_data = PlanWeek.objects.filter(
                        end_date__lte=today
                    ).last()
                    if week_data:
                        date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                        date_ranges_with_data[date_range].append({
                            "project_name": plan.plan_name,
                            "construction_status": plan.construction_status,
                            "actual": 0,
                            "expected": 0,
                        })

            ordered_date_ranges = OrderedDict(sorted(date_ranges_with_data.items(), reverse=True))
            latest_date_range, latest_data = next(iter(ordered_date_ranges.items()))

            paginator = Paginator(list(ordered_date_ranges.items()), itemsPerPage)
            page_obj = paginator.get_page(currentPage)

            formatted_results = []
            if currentPage == 1:
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "project_name": item["project_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })
            else:
                for item in latest_data:
                    formatted_results.append({
                        "project_name": item["project_name"],
                        "date_range": latest_date_range,
                        "actual": item["actual"],
                        "expected": item["expected"],
                        "construction_status": item["construction_status"],
                    })
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "project_name": item["project_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })

            return Response({
                'results': formatted_results,
                'totalPages': paginator.num_pages,
                'currentPage': currentPage
            })
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion

#region 計算所有季Plan工程進度     
class GetPlanAllQuarterProgress(APIView):
    def get(self, request, master_plan_id, currentPage, itemsPerPage):
        try:

            plans = Plan.objects.filter(master_plan_id=master_plan_id)

            date_ranges_with_data = defaultdict(list)
            progress_model = PlansProgress
            expected_model = PlansProgressExpected

            for plan in plans:
               # 找到每一個季度的最後一周
                all_years = PlanWeek.objects.values_list('year', flat=True).distinct()
                for year in all_years:
                    for quarter in range(1, 5):
                        last_week_of_quarter = PlanWeek.objects.filter(
                            year=year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = PlanWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = progress_model.objects.filter(
                                plan_id=plan.plan_id, 
                                plan_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        plan_id=plan.plan_id, 
                                        plan_week_id=progress_record.plan_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "project_name": plan.plan_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": plan.construction_status,
                                        })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "project_name": plan.plan_name,
                                    "construction_status": plan.construction_status,
                                    "actual": 0,
                                    "expected": 0,
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                })

            # 轉換有序字典並提取最新的 date_range 數據
            ordered_date_ranges = OrderedDict(sorted(date_ranges_with_data.items(), reverse=True))
            latest_date_range, latest_data = next(iter(ordered_date_ranges.items()))

            # 準備分頁數據
            if currentPage > 1:
                pass

            paginator = Paginator(list(ordered_date_ranges.items()), itemsPerPage)
            page_obj = paginator.get_page(currentPage)

            # 格式化當前數據
            formatted_results = []
            if currentPage == 1:
                # 第一頁直接展示包括最新的 date_range 數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "project_name": item["project_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
                    formatted_results.append({
                        "year": item["year"],
                        "quarter": item["quarter"],
                        "week": item["week"],
                        "project_name": item["project_name"],
                        "date_range": latest_date_range,
                        "actual": item["actual"],
                        "expected": item["expected"],
                        "construction_status": item["construction_status"],
                    })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "project_name": item["project_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })

            return Response({
                'results': formatted_results,
                'totalPages': paginator.num_pages,
                'currentPage': currentPage
            })
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion

#region 計算即時季Plan工程進度       
class GetPlanQuarterProgress(APIView):
    def get(self, request, master_plan_id, currentPage, itemsPerPage):
        try:
            current_year = datetime.datetime.now().year
            plans = Plan.objects.filter(master_plan_id=master_plan_id)

            date_ranges_with_data = defaultdict(list)
            progress_model = PlansProgress
            expected_model = PlansProgressExpected

            for plan in plans:
                for quarter in range(1, 5):
                    last_week_of_quarter = PlanWeek.objects.filter(
                        year=current_year, 
                        quarter=quarter
                    ).aggregate(Max('week'))['week__max']

                    if last_week_of_quarter:
                        last_week = PlanWeek.objects.get(
                            year=current_year, 
                            quarter=quarter, 
                            week=last_week_of_quarter
                        )

                        progress_records = progress_model.objects.filter(
                            plan_id=plan.plan_id, 
                            plan_week_id=last_week.week_id
                        )
                        if progress_records.exists():
                            for progress_record in progress_records:
                                expected_record = expected_model.objects.filter(
                                    plan_id=plan.plan_id, 
                                    plan_week_id=progress_record.plan_week_id
                                ).first()
                                if expected_record:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "project_name": plan.plan_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": plan.construction_status,
                                    })
                        else:
                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                            date_ranges_with_data[date_range].append({
                                "project_name": plan.plan_name,
                                "construction_status": plan.construction_status,
                                "actual": 0,
                                "expected": 0,
                                "year": last_week.year,
                                "quarter": last_week.quarter,
                                "week": last_week.week,
                            })

            # 轉換有序字典並提取最新的 date_range 數據
            ordered_date_ranges = OrderedDict(sorted(date_ranges_with_data.items(), reverse=True))
            latest_date_range, latest_data = next(iter(ordered_date_ranges.items()))

            # 準備分頁數據
            if currentPage > 1:
                pass

            paginator = Paginator(list(ordered_date_ranges.items()), itemsPerPage)
            page_obj = paginator.get_page(currentPage)

            # 格式化當前數據
            formatted_results = []
            if currentPage == 1:
                # 第一頁直接展示包括最新的 date_range 數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "project_name": item["project_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
                    formatted_results.append({
                        "year": item["year"],
                        "quarter": item["quarter"],
                        "week": item["week"],
                        "project_name": item["project_name"],
                        "date_range": latest_date_range,
                        "actual": item["actual"],
                        "expected": item["expected"],
                        "construction_status": item["construction_status"],
                    })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "project_name": item["project_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })

            return Response({
                'results': formatted_results,
                'totalPages': paginator.num_pages,
                'currentPage': currentPage
            })
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion

#region 計算季工程進度報表
class GetPlanQuarterChartProgress(APIView):
    
    def get(self, request, master_plan_id):
        try:

            plans = Plan.objects.filter(master_plan_id=master_plan_id)
            progress_model = PlansProgress
            expected_model = PlansProgressExpected

            current_year = datetime.datetime.now().year
            labels = [f"Q{quarter}" for quarter in range(1, 5)]

            datasets = []

            for plan in plans:
                actual_data = []
                expected_data = []
                for quarter in range(1, 5):
                    last_week_of_quarter = PlanWeek.objects.filter(
                        year=current_year, 
                        quarter=quarter
                    ).aggregate(Max('week'))['week__max']

                    if last_week_of_quarter:
                        last_week = PlanWeek.objects.get(
                            year=current_year, 
                            quarter=quarter, 
                            week=last_week_of_quarter
                        )

                        progress_record = progress_model.objects.filter(
                            plan_id=plan.plan_id, 
                            plan_week_id=last_week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            plan_id=plan.plan_id, 
                            plan_week_id=last_week.week_id
                        ).first() if progress_record else None

                        if plan.construction_status == 1 :
                                actual_percentage = 100
                                expected_percentage = 100
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(plan.plan_name)

                datasets.append({
                    "label": f"{plan.plan_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{plan.plan_name} 預計",
                    "data": expected_data,
                    "borderColor": base_color,
                    "borderDash": [5, 5]
                })

            return Response({
                "labels": labels,
                "datasets": datasets
            })
        except Exception as e:
            return Response({"error": str(e)}, status=500)
#endregion
        
#region 計算所有季工程進度報表
class GetPlanAllQuarterChartProgress(APIView):
    
    def get(self, request, master_plan_id):
        try:

            plans = Plan.objects.filter(master_plan_id=master_plan_id)
            progress_model = PlansProgress
            expected_model = PlansProgressExpected

            datasets = []
            all_years = PlanWeek.objects.values_list('year', flat=True).order_by('year').distinct()

            labels = [f"{year} Q{quarter}" for year in all_years for quarter in range(1, 5)]

            for plan in plans:
                actual_data = []
                expected_data = []
                for year in all_years:
                    quarters_with_data = PlanWeek.objects.filter(year=year).values_list('quarter', flat=True).distinct()

                    for quarter in quarters_with_data:
                        last_week_of_quarter = PlanWeek.objects.filter(
                            year=year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = PlanWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                        progress_record = progress_model.objects.filter(
                            plan_id=plan.plan_id, 
                            plan_week_id=last_week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            plan_id=plan.plan_id, 
                            plan_week_id=last_week.week_id
                        ).first() if progress_record else None

                        if plan.construction_status == 1 :
                                actual_percentage = 100
                                expected_percentage = 100
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(plan.plan_name)

                datasets.append({
                    "label": f"{plan.plan_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{plan.plan_name} 預計",
                    "data": expected_data,
                    "borderColor": base_color,
                    "borderDash": [5, 5]
                })

            return Response({
                "labels": labels,
                "datasets": datasets
            })
        except Exception as e:
            return Response({"error": str(e)}, status=500)
#endregion
        
#region 計算所有周工程進度報表
class GetPlanWeekChartProgress(APIView):
    
    def get(self, request, master_plan_id, currentPage, itemsPerPage):
        try:

            plans = Plan.objects.filter(master_plan_id=master_plan_id)

            progress_model = PlansProgress
            expected_model = PlansProgressExpected

            # 獲取所有周，並由新到舊排序
            all_weeks = PlanWeek.objects.annotate(
                date_range=Concat(
                    'start_date', V(' - '), 'end_date',
                    output_field=CharField()
                )
            ).order_by('-start_date')

            # 分頁處理
            paginator = Paginator(all_weeks, itemsPerPage)
            try:
                current_weeks = paginator.page(currentPage)
            except PageNotAnInteger:
                current_weeks = paginator.page(1)
            except EmptyPage:
                current_weeks = paginator.page(paginator.num_pages)

            sorted_weeks = sorted(list(current_weeks), key=lambda week: week.date_range.split(' - ')[0])

            labels = [week.date_range for week in sorted_weeks]

            datasets = []

            for plan in plans:
                actual_data = []
                expected_data = []
                for week in sorted_weeks:
                    progress_record = progress_model.objects.filter(
                        plan_id=plan.plan_id,
                        plan_week_id=week.week_id
                    ).first()

                    expected_record = expected_model.objects.filter(
                        plan_id=plan.plan_id,
                        plan_week_id=week.week_id
                    ).first()

                    if plan.construction_status == 1 :
                            actual_percentage = 100
                            expected_percentage = 100
                    else:
                        actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                        expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                    actual_data.append(actual_percentage)
                    expected_data.append(expected_percentage)

                base_color = get_color_from_name(plan.plan_name)

                datasets.append({
                    "label": f"{plan.plan_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{plan.plan_name} 預計",
                    "data": expected_data,
                    "borderColor": base_color,
                    "borderDash": [5, 5]
                })

            return Response({
                "labels": labels,
                "datasets": datasets
            })
        except Exception as e:
            return Response({"error": str(e)}, status=500)
#endregion


def get_color_from_name(name):
    hash_obj = hashlib.sha256(name.encode())
    hash_hex = hash_obj.hexdigest()

    r = int(hash_hex[0:2], 16)
    g = int(hash_hex[2:4], 16)
    b = int(hash_hex[4:6], 16)
    
    max_brightness = 220
    r = int(r / 255 * max_brightness)
    g = int(g / 255 * max_brightness)
    b = int(b / 255 * max_brightness)

    color = f'#{r:02x}{g:02x}{b:02x}'
    return color


