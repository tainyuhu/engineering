import datetime
from django.utils import timezone
from django.db.models import F, Func
from rest_framework import status
from apps.app_plan.models import Plan
from .models import (
    LoopWeek, Project, ProjectWeek, ProjectsProgress, ProjectsProgressExpected, ProjectLoop, LoopsHistory,
    LoopsProgress, LoopsProgressExpected, ProjectCase, CasesHistory, CasesProgress, CasesProgressExpected, ProportionBlocks, ProportionHistory
)
from .serializers import (
    ProjectSerializer, ProjectsProgressSerializer, ProjectsProgressExpectedSerializer, ProjectLoopSerializer, LoopsHistorySerializer,
    LoopsProgressSerializer, LoopsProgressExpectedSerializer, ProjectCaseSerializer, CasesHistorySerializer, CasesProgressSerializer, CasesProgressExpectedSerializer, ProportionBlocksSerializer, ProportionHistorySerializer
)
from rest_framework import generics
from rest_framework.views import APIView
from django.db.models import Subquery, OuterRef
from rest_framework.response import Response
from apps.app_project.models import Project
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Max
import hashlib
from django.db.models.functions import Concat
from django.db.models import Value as V
from django.db.models import CharField

#region 比例
class ProportionBlocksList(generics.ListCreateAPIView):
    queryset = ProportionBlocks.objects.all()
    serializer_class = ProportionBlocksSerializer

class ProportionBlocksDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProportionBlocks.objects.all()
    serializer_class = ProportionBlocksSerializer
#endregion

#region 比例歷史
class ProportionHistoryList(generics.ListCreateAPIView):
    queryset = ProportionHistory.objects.all()
    serializer_class = ProportionHistorySerializer

class ProportionHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProportionHistory.objects.all()
    serializer_class = ProportionHistorySerializer
#endregion

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
        queryset = ProjectLoop.objects.all().order_by('loop_name')
        project_id = self.kwargs.get('project_id')

        if project_id is not None:
            queryset = queryset.filter(project_id=project_id).order_by('loop_name')

        return queryset

# 擷取案場之比例    
class GetLoopPercentageData(APIView):
    def get(self, request, loop_id):
        try:
            # 找到與 loop_id 關聯的所有案例
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            # 構建返回的數據結構
            percentage_data = []

            for onecase in cases:
                # 獲得與 block_id 對應的 proportionblock 的 id
                block_id = ProportionBlocks.objects.filter(id=onecase.block_id.id).values('id')

                # 從 ProportionHistory 中查找對應的 percentage
                proportion_history = ProportionHistory.objects.filter(
                    block_id__in=Subquery(block_id)
                ).order_by('-effective_date').first()  # 假設我們需要最新的記錄

                if proportion_history:
                    percentage_data.append({
                        'vb_name': onecase.cases_name,
                        'percentage': proportion_history.percentage
                    })

            return Response(percentage_data)
        
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)

# 擷取迴路之比例    
class GetProjectPercentageDataView(APIView):
    def get(self, request, project_id):
        try:
            projects = ProjectLoop.objects.filter(project_id=project_id)

            # 構建返回的數據結構
            percentage_data = []

            for loop in projects:
                # 獲得與 project_block 對應的 proportionblock 的 id
                block_id = ProportionBlocks.objects.filter(id=loop.block_id.id).values('id')

                # 從 ProportionHistory 中查找對應的 percentage
                proportion_history = ProportionHistory.objects.filter(
                    block_id__in=Subquery(block_id)
                ).order_by('-effective_date').first()  # 假設我們需要最新的記錄

                if proportion_history:
                    percentage_data.append({
                        'loop_name': loop.loop_name,
                        'percentage': proportion_history.percentage
                    })

            return Response(percentage_data)

        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
        
# 擷取專案之比例 
class GetPlanPercentageDataView(APIView):
    def get(self, request, plan_id):
        try:
            
            projects = Project.objects.filter(plan_id=plan_id)

            # 構建返回的數據結構
            percentage_data = []

            for project in projects:
                # 獲得與 project_block 對應的 proportionblock 的 id
                block_id = ProportionBlocks.objects.filter(id=project.block_id.id).values('id')

                # 從 ProportionHistory 中查找對應的 percentage
                proportion_history = ProportionHistory.objects.filter(
                    block_id__in=Subquery(block_id)
                ).order_by('-effective_date').first()  # 假設我們需要最新的記錄

                if proportion_history:
                    percentage_data.append({
                        'project_name': project.project_name,
                        'percentage': proportion_history.percentage
                    })

            return Response(percentage_data)

        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
        
# 擷取計畫之比例 
class GetMasterPlanPercentageDataView(APIView):
    def get(self, request, master_plan_id):
        try:
            plans = Plan.objects.filter(master_plan_id=master_plan_id)
            # 構建返回的數據結構
            percentage_data = []

            for plan in plans:
                # 獲得與 project_block 對應的 proportionblock 的 id
                block_id = ProportionBlocks.objects.filter(id=plan.block_id.id).values('id')

                # 從 ProportionHistory 中查找對應的 percentage
                proportion_history = ProportionHistory.objects.filter(
                    block_id__in=Subquery(block_id)
                ).order_by('-effective_date').first()  # 假設我們需要最新的記錄

                if proportion_history:
                    percentage_data.append({
                        'project_name': plan.plan_name,
                        'percentage': proportion_history.percentage
                    })

            return Response(percentage_data)

        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
        
#region 計算所有周Loop工程進度
class GetLoopProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage):
        try:

            projects = Project.objects.filter(project_id=project_id)
            loops = ProjectLoop.objects.filter(project_id__in=projects)

            date_ranges_with_data = defaultdict(list)

            progress_model = LoopsProgress
            expected_model = LoopsProgressExpected

            for loop in loops:
                progress_records = progress_model.objects.filter(loop_id=loop.loop_id).order_by('-loop_week_id')
                if progress_records.exists():
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            loop_id=loop.loop_id, 
                            loop_week_id=progress_record.loop_week_id
                        ).first()
                        if expected_record:
                            week_data = LoopWeek.objects.filter(week_id=expected_record.loop_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "loop_name": loop.loop_name,
                                    "actual": progress_record.progress_percentage,
                                    "expected": expected_record.progress_percentage,
                                    "construction_status": loop.construction_status,
                                })
                else:
                    today = datetime.datetime.now().strftime("%Y-%m-%d")
                    week_data = LoopWeek.objects.filter(
                        end_date__lte=today
                    ).last()
                    if week_data:
                        date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                        date_ranges_with_data[date_range].append({
                            "loop_name": loop.loop_name,
                            "construction_status": loop.construction_status,
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
                            "loop_name": item["loop_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })
            else:
                for item in latest_data:
                    formatted_results.append({
                        "loop_name": item["loop_name"],
                        "date_range": latest_date_range,
                        "actual": item["actual"],
                        "expected": item["expected"],
                        "construction_status": item["construction_status"],
                    })
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "loop_name": item["loop_name"],
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

#region 計算所有季Loop工程進度     
class GetLoopAllQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage):
        try:

            projects = Project.objects.filter(project_id=project_id)
            loops = ProjectLoop.objects.filter(project_id__in=projects)

            date_ranges_with_data = defaultdict(list)
            progress_model = LoopsProgress
            expected_model = LoopsProgressExpected

            # 確認是否在工程時間內
            projectss = projects.first()
            engineering_start = min(projectss.actualstart_date, projectss.plannedstart_date)
            engineering_end = projectss.actualend_date or datetime.date.today()

            relevant_years = LoopWeek.objects.filter(
                start_date__gte=engineering_start,
                end_date__lte=engineering_end
            ).values_list('year', flat=True).distinct()

            for loop in loops:
                for year in relevant_years:
                    for quarter in range(1, 5):
                        last_week_of_quarter = LoopWeek.objects.filter(
                            year=year, 
                            quarter=quarter,
                            start_date__gte=engineering_start,
                            end_date__lte=engineering_end
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = LoopWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = progress_model.objects.filter(
                                loop_id=loop.loop_id, 
                                loop_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        loop_id=loop.loop_id, 
                                        loop_week_id=progress_record.loop_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "loop_name": loop.loop_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": loop.construction_status,
                                        })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "loop_name": loop.loop_name,
                                    "construction_status": loop.construction_status,
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
                            "loop_name": item["loop_name"],
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
                        "loop_name": item["loop_name"],
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
                            "loop_name": item["loop_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })
            print(formatted_results)
            return Response({
                'results': formatted_results,
                'totalPages': paginator.num_pages,
                'currentPage': currentPage
            })
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion

#region 計算即時季Loop工程進度       
class GetLoopQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage):
        try:
            projects = Project.objects.filter(project_id=project_id)
            loops = ProjectLoop.objects.filter(project_id__in=projects)

            date_ranges_with_data = defaultdict(list)
            progress_model = LoopsProgress
            expected_model = LoopsProgressExpected

            # 確認是否在工程時間內
            loopss = loops.first()
            engineering_start = min(loopss.actualstart_date, loopss.plannedstart_date)
            engineering_end = loopss.actualend_date or datetime.date.today()

            # 確認工程結束年份
            engineering_end_year = engineering_end.year

            relevant_years = LoopWeek.objects.filter(
                start_date__gte=engineering_start,
                end_date__lte=engineering_end,
                year=engineering_end_year
            ).values_list('year', flat=True).distinct()

            for loop in loops:
                for year in relevant_years:
                    for quarter in range(1, 5):
                        last_week_of_quarter = LoopWeek.objects.filter(
                            year=year, 
                            quarter=quarter,
                            start_date__gte=engineering_start,
                            end_date__lte=engineering_end
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = LoopWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = progress_model.objects.filter(
                                loop_id=loop.loop_id, 
                                loop_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        loop_id=loop.loop_id, 
                                        loop_week_id=progress_record.loop_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "loop_name": loop.loop_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": loop.construction_status,
                                        })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "loop_name": loop.loop_name,
                                    "construction_status": loop.construction_status,
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
                            "loop_name": item["loop_name"],
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
                        "loop_name": item["loop_name"],
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
                            "loop_name": item["loop_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })
            print(formatted_results)

            return Response({
                'results': formatted_results,
                'totalPages': paginator.num_pages,
                'currentPage': currentPage
            })
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
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

#region 計算季工程進度報表
class GetLoopQuarterChartProgress(APIView):
    
    def get(self, request, project_id):
        try:

            projects = Project.objects.filter(project_id=project_id)
            loops = ProjectLoop.objects.filter(project_id__in=projects)
            progress_model = LoopsProgress
            expected_model = LoopsProgressExpected

            datasets = []
            relevant_years_and_quarters = set()

            # 確認是否在工程時間內
            loopss = loops.first()
            engineering_start = min(loopss.actualstart_date, loopss.plannedstart_date)
            engineering_end = loopss.actualend_date or datetime.date.today()

            # 確認工程結束年份
            engineering_end_year = engineering_end.year

            for loop in loops:
                # 根據工程日期範圍過濾 Week，並收集指定年份的季度
                years_and_quarters = LoopWeek.objects.filter(
                    start_date__gte=engineering_start,
                    end_date__lte=engineering_end,
                    year=engineering_end_year  # 只取出該年分季度的資料
                ).values_list('year', 'quarter').distinct()

                for year, quarter in years_and_quarters:
                    relevant_years_and_quarters.add((year, quarter))

            # 將收集到的年份和季度排序並生成標籤
            all_years_and_quarters = sorted(relevant_years_and_quarters)
            labels = [f"{year} Q{quarter}" for year, quarter in all_years_and_quarters]

            for loop in loops:
                actual_data = []
                expected_data = []
                for quarter in range(1, 5):
                    last_week_of_quarter = LoopWeek.objects.filter(
                        year=engineering_end_year, 
                        quarter=quarter,
                        start_date__gte=engineering_start,
                        end_date__lte=engineering_end
                    ).aggregate(Max('week'))['week__max']

                    if last_week_of_quarter:
                        last_week = LoopWeek.objects.get(
                            year=engineering_end_year, 
                            quarter=quarter, 
                            week=last_week_of_quarter
                        )

                        progress_record = progress_model.objects.filter(
                            loop_id=loop.loop_id, 
                            loop_week_id=last_week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            loop_id=loop.loop_id, 
                            loop_week_id=last_week.week_id
                        ).first() if progress_record else None

                        if progress_record == None and loop.construction_status == 1:
                            actual_percentage = 100
                            expected_percentage = 100
                        elif progress_record == None :
                            actual_percentage = 0
                            expected_percentage = 0
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0
                        
                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(loop.loop_name)

                datasets.append({
                    "label": f"{loop.loop_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{loop.loop_name} 預計",
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
class GetLoopAllQuarterChartProgress(APIView):
    
    def get(self, request, project_id):
        try:

            projects = Project.objects.filter(project_id=project_id)
            loops = ProjectLoop.objects.filter(project_id__in=projects)
            progress_model = LoopsProgress
            expected_model = LoopsProgressExpected

            datasets = []
            relevant_years_and_quarters = set()

            # 確認是否在工程時間內
            loopss = loops.first()
            engineering_start = min(loopss.actualstart_date, loopss.plannedstart_date)
            engineering_end = loopss.actualend_date or datetime.date.today()

            for loop in loops:
                # 根據工程日期範圍過濾 Week，並收集指定年份的季度
                years_and_quarters = LoopWeek.objects.filter(
                    start_date__gte=engineering_start,
                    end_date__lte=engineering_end
                ).values_list('year', 'quarter').distinct()

                for year, quarter in years_and_quarters:
                    relevant_years_and_quarters.add((year, quarter))

            # 將收集到的年份和季度排序並生成標籤
            all_years_and_quarters = sorted(relevant_years_and_quarters)
            labels = [f"{year} Q{quarter}" for year, quarter in all_years_and_quarters]

            for loop in loops:
                actual_data = []
                expected_data = []
                for year, quarter in all_years_and_quarters:
                    last_week_of_quarter = LoopWeek.objects.filter(
                        year=year, 
                        quarter=quarter,
                        start_date__gte=engineering_start,
                        end_date__lte=engineering_end
                    ).aggregate(Max('week'))['week__max']

                    if last_week_of_quarter:
                        last_week = LoopWeek.objects.get(
                            year=year, 
                            quarter=quarter, 
                            week=last_week_of_quarter
                        )

                        progress_record = progress_model.objects.filter(
                            loop_id=loop.loop_id, 
                            loop_week_id=last_week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            loop_id=loop.loop_id, 
                            loop_week_id=last_week.week_id
                        ).first() if progress_record else None

                        if progress_record == None and loop.construction_status == 1:
                            actual_percentage = 100
                            expected_percentage = 100
                        elif progress_record == None :
                            actual_percentage = 0
                            expected_percentage = 0
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(loop.loop_name)

                datasets.append({
                    "label": f"{loop.loop_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{loop.loop_name} 預計",
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
class GetLoopWeekChartProgress(APIView):
    
    def get(self, request, project_id, currentPage, itemsPerPage):
        try:

            projects = Project.objects.filter(project_id=project_id)
            loops = ProjectLoop.objects.filter(project_id__in=projects)

            progress_model = LoopsProgress
            expected_model = LoopsProgressExpected

            # 確認是否在工程時間內
            loopss = loops.first()
            engineering_start = min(loopss.actualstart_date, loopss.plannedstart_date)
            engineering_end = loopss.actualend_date or datetime.date.today()

            # 獲取所有周，並由新到舊排序
            all_weeks = LoopWeek.objects.filter(
                start_date__gte=engineering_start,
                end_date__lte=engineering_end
            ).annotate(
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

            for loop in loops:
                actual_data = []
                expected_data = []
                for week in sorted_weeks:
                    progress_record = progress_model.objects.filter(
                        loop_id=loop.loop_id,
                        loop_week_id=week.week_id
                    ).first()

                    expected_record = expected_model.objects.filter(
                        loop_id=loop.loop_id,
                        loop_week_id=week.week_id
                    ).first()

                    if progress_record == None and loop.construction_status == 1:
                        actual_percentage = 100
                        expected_percentage = 100
                    elif progress_record == None :
                        actual_percentage = 0
                        expected_percentage = 0
                    else:
                        actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                        expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                    actual_data.append(actual_percentage)
                    expected_data.append(expected_percentage)

                base_color = get_color_from_name(loop.loop_name)

                datasets.append({
                    "label": f"{loop.loop_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{loop.loop_name} 預計",
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


#region 計算所有周Project工程進度
class GetProjectProgress(APIView):
    def get(self, request, plan_id, currentPage, itemsPerPage):
        try:

            projects = Project.objects.filter(plan_id=plan_id)

            date_ranges_with_data = defaultdict(list)

            progress_model = ProjectsProgress
            expected_model = ProjectsProgressExpected

            
            for project in projects:
                progress_records = progress_model.objects.filter(project_id=project.project_id).order_by('-project_week_id')
                if progress_records.exists():
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            project_id=project.project_id, 
                            project_week_id=progress_record.project_week_id
                        ).first()
                        if expected_record:
                            week_data = ProjectWeek.objects.filter(week_id=expected_record.project_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "project_name": project.project_name,
                                    "actual": progress_record.progress_percentage,
                                    "expected": expected_record.progress_percentage,
                                    "construction_status": project.construction_status,
                                })
                else:
                    today = datetime.datetime.now().strftime("%Y-%m-%d")
                    week_data = ProjectWeek.objects.filter(
                        end_date__lte=today
                    ).last()
                    if week_data:
                        date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                        date_ranges_with_data[date_range].append({
                            "project_name": project.project_name,
                            "construction_status": project.construction_status,
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

#region 計算所有季Project工程進度     
class GetProjectAllQuarterProgress(APIView):
    def get(self, request, plan_id, currentPage, itemsPerPage):
        try:

            projects = Project.objects.filter(plan_id=plan_id)

            date_ranges_with_data = defaultdict(list)
            progress_model = ProjectsProgress
            expected_model = ProjectsProgressExpected

            # 確認是否在工程時間內
            plans = Plan.objects.filter(plan_id=plan_id).first()
            engineering_start = min(plans.actual_start_date, plans.planned_start_date)
            engineering_end = plans.actual_end_date or datetime.date.today()

            relevant_years = ProjectWeek.objects.filter(
                start_date__gte=engineering_start,
                end_date__lte=engineering_end
            ).values_list('year', flat=True).distinct()

            for project in projects:
               # 找到每一個季度的最後一周
                for year in relevant_years:
                    for quarter in range(1, 5):
                        last_week_of_quarter = ProjectWeek.objects.filter(
                            year=year, 
                            quarter=quarter,
                            start_date__gte=engineering_start,
                            end_date__lte=engineering_end
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = ProjectWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = progress_model.objects.filter(
                                project_id=project.project_id, 
                                project_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        project_id=project.project_id, 
                                        project_week_id=progress_record.project_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "project_name": project.project_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": project.construction_status,
                                        })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "project_name": project.project_name,
                                    "construction_status": project.construction_status,
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

#region 計算即時季Project工程進度       
class GetProjectQuarterProgress(APIView):
    def get(self, request, plan_id, currentPage, itemsPerPage):
        try:
            projects = Project.objects.filter(plan_id=plan_id)

            date_ranges_with_data = defaultdict(list)
            progress_model = ProjectsProgress
            expected_model = ProjectsProgressExpected

            # 確認是否在工程時間內
            plans = Plan.objects.filter(plan_id=plan_id).first()
            engineering_start = min(plans.actual_start_date, plans.planned_start_date)
            engineering_end = plans.actual_end_date or datetime.date.today()

            # 確認工程結束年份
            engineering_end_year = engineering_end.year

            relevant_years = ProjectWeek.objects.filter(
                start_date__gte=engineering_start,
                end_date__lte=engineering_end,
                year=engineering_end_year
            ).values_list('year', flat=True).distinct()

            for project in projects:
                for year in relevant_years:
                    for quarter in range(1, 5):
                        last_week_of_quarter = ProjectWeek.objects.filter(
                            year=year, 
                            quarter=quarter,
                            start_date__gte=engineering_start,
                            end_date__lte=engineering_end
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = ProjectWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = progress_model.objects.filter(
                                project_id=project.project_id, 
                                project_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        project_id=project.project_id, 
                                        project_week_id=progress_record.project_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "project_name": project.project_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": project.construction_status,
                                        })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "project_name": project.project_name,
                                    "construction_status": project.construction_status,
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
class GetProjectQuarterChartProgress(APIView):
    
    def get(self, request, plan_id):
        try:

            projects = Project.objects.filter(plan_id=plan_id)
            progress_model = ProjectsProgress
            expected_model = ProjectsProgressExpected

            datasets = []
            relevant_years_and_quarters = set()

            # 確認是否在工程時間內
            plans = Plan.objects.filter(plan_id=plan_id).first()
            engineering_start = min(plans.actual_start_date, plans.planned_start_date)
            engineering_end = plans.actual_end_date or datetime.date.today()

            # 確認工程結束年份
            engineering_end_year = engineering_end.year

            for project in projects:
                # 根據工程日期範圍過濾 Week，並收集指定年份的季度
                years_and_quarters = ProjectWeek.objects.filter(
                    start_date__gte=engineering_start,
                    end_date__lte=engineering_end,
                    year=engineering_end_year  # 只取出該年分季度的資料
                ).values_list('year', 'quarter').distinct()

                for year, quarter in years_and_quarters:
                    relevant_years_and_quarters.add((year, quarter))

            # 將收集到的年份和季度排序並生成標籤
            all_years_and_quarters = sorted(relevant_years_and_quarters)
            labels = [f"{year} Q{quarter}" for year, quarter in all_years_and_quarters]

            for project in projects:
                actual_data = []
                expected_data = []
                for quarter in range(1, 5):
                    last_week_of_quarter = ProjectWeek.objects.filter(
                        year=year, 
                        quarter=quarter,
                        start_date__gte=engineering_start,
                        end_date__lte=engineering_end
                    ).aggregate(Max('week'))['week__max']

                    if last_week_of_quarter:
                        last_week = ProjectWeek.objects.get(
                            year=year, 
                            quarter=quarter, 
                            week=last_week_of_quarter
                        )

                        progress_record = progress_model.objects.filter(
                            project_id=project.project_id, 
                            project_week_id=last_week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            project_id=project.project_id, 
                            project_week_id=last_week.week_id
                        ).first() if progress_record else None

                        if progress_record is None:
                            if project.construction_status == 1:
                                actual_percentage = 100
                                expected_percentage = 100
                            else:
                                actual_percentage = 0
                                expected_percentage = 0
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(project.project_name)

                datasets.append({
                    "label": f"{project.project_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{project.project_name} 預計",
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
class GetProjectAllQuarterChartProgress(APIView):
    
    def get(self, request, plan_id):
        try:

            projects = Project.objects.filter(plan_id=plan_id)
            progress_model = ProjectsProgress
            expected_model = ProjectsProgressExpected

            datasets = []
            relevant_years_and_quarters = set()

            # 確認是否在工程時間內
            plans = Plan.objects.filter(plan_id=plan_id).first()
            engineering_start = min(plans.actual_start_date, plans.planned_start_date)
            engineering_end = plans.actual_end_date or datetime.date.today()

            for project in projects:
                # 根據工程日期範圍過濾 Week，並收集指定年份的季度
                years_and_quarters = ProjectWeek.objects.filter(
                    start_date__gte=engineering_start,
                    end_date__lte=engineering_end
                ).values_list('year', 'quarter').distinct()

                for year, quarter in years_and_quarters:
                    relevant_years_and_quarters.add((year, quarter))

            # 將收集到的年份和季度排序並生成標籤
            all_years_and_quarters = sorted(relevant_years_and_quarters)
            labels = [f"{year} Q{quarter}" for year, quarter in all_years_and_quarters]

            for project in projects:
                actual_data = []
                expected_data = []
                for year, quarter in all_years_and_quarters:
                    last_week_of_quarter = ProjectWeek.objects.filter(
                        year=year, 
                        quarter=quarter,
                        start_date__gte=engineering_start,
                        end_date__lte=engineering_end
                    ).aggregate(Max('week'))['week__max']

                    if last_week_of_quarter:
                        last_week = ProjectWeek.objects.get(
                            year=year, 
                            quarter=quarter, 
                            week=last_week_of_quarter
                        )

                        progress_record = progress_model.objects.filter(
                            project_id=project.project_id, 
                            project_week_id=last_week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            project_id=project.project_id, 
                            project_week_id=last_week.week_id
                        ).first() if progress_record else None

                        if progress_record is None:
                            if project.construction_status == 1:
                                actual_percentage = 100
                                expected_percentage = 100
                            else:
                                actual_percentage = 0
                                expected_percentage = 0
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(project.project_name)

                datasets.append({
                    "label": f"{project.project_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{project.project_name} 預計",
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
class GetProjectWeekChartProgress(APIView):
    
    def get(self, request, plan_id, currentPage, itemsPerPage):
        try:

            projects = Project.objects.filter(plan_id=plan_id)

            progress_model = ProjectsProgress
            expected_model = ProjectsProgressExpected

            # 確認是否在工程時間內
            plans = Plan.objects.filter(plan_id=plan_id).first()
            engineering_start = min(plans.actual_start_date, plans.planned_start_date)
            engineering_end = plans.actual_end_date or datetime.date.today()

            # 獲取所有周，並由新到舊排序
            all_weeks = ProjectWeek.objects.filter(
                start_date__gte=engineering_start,
                end_date__lte=engineering_end
            ).annotate(
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

            for project in projects:
                actual_data = []
                expected_data = []
                for week in sorted_weeks:
                    progress_record = progress_model.objects.filter(
                        project_id=project.project_id,
                        project_week_id=week.week_id
                    ).first()

                    expected_record = expected_model.objects.filter(
                        project_id=project.project_id,
                        project_week_id=week.week_id
                    ).first()

                    if progress_record is None:
                        if project.construction_status == 1:
                            actual_percentage = 100
                            expected_percentage = 100
                        else:
                            actual_percentage = 0
                            expected_percentage = 0
                    else:
                        actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                        expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                    actual_data.append(actual_percentage)
                    expected_data.append(expected_percentage)

                base_color = get_color_from_name(project.project_name)

                datasets.append({
                    "label": f"{project.project_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{project.project_name} 預計",
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

#region 取得最新一周的計畫進度
class GetOnePlanProgress(APIView):
    def get(self, request, master_plan_id):
        try:
            plans = Plan.objects.filter(master_plan_id=master_plan_id)
            current_date = timezone.now().date()
            all_plans_progress = []

            for plan in plans:
                projects_progress_list = []
                projects = Project.objects.filter(plan_id=plan.plan_id)
                
                for project in projects:
                    progress_record = ProjectsProgress.objects.filter(project_id=project.project_id).order_by('-project_week_id').first()
                    if progress_record:
                        expected_record = ProjectsProgressExpected.objects.filter(
                            project_id=project.project_id, 
                            project_week_id=progress_record.project_week_id
                        ).first()
                        week_data = ProjectWeek.objects.filter(week_id=progress_record.project_week_id.week_id).first()
                    else:
                        week_data = ProjectWeek.objects.annotate(
                            distance=Func(F('start_date') - current_date, function='ABS')
                        ).order_by('distance').first()
                        expected_record = None

                    if week_data:
                        project_progress = {
                            "projectName": project.project_name,
                            "progress": progress_record.progress_percentage if progress_record else 0,
                            "expected": expected_record.progress_percentage if expected_record else 0,
                            "construction_status": project.construction_status,
                        }
                        projects_progress_list.append(project_progress)

                plan_progress = {
                    "planName": plan.plan_name,
                    "projects": projects_progress_list
                }
                all_plans_progress.append(plan_progress)

            return Response(all_plans_progress, status=status.HTTP_200_OK)
        except Exception as e:
            return Response({'error': str(e)}, status=500)
#endregion
