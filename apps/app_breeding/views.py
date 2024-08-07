import datetime
from rest_framework import generics
from .models import BreedingBankExpectedHistory, BreedingBankHistory, BreedingBankProgress, BreedingBankProgressExpected, ProjectBreeding, ProjectBreedingExpectedProgress, ProjectBreedingHistory, ProjectBreedingProgress, BreedingWeek
from .serializers import BreedingBankExpectedHistorySerializer, BreedingBankHistorySerializer, BreedingBankProgressExpectedSerializer, BreedingBankProgressSerializer, ProjectBreedingExpectedProgressSerializer, ProjectBreedingHistorySerializer, ProjectBreedingProgressSerializer, ProjectBreedingSerializer, BreedingWeekSerializer
from rest_framework.views import APIView
from apps.app_project.models import LoopWeek, LoopsProgress, LoopsProgressExpected, Project, ProjectCase, ProjectLoop
from rest_framework.response import Response
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Max
import hashlib
from django.db.models.functions import Concat
from django.db.models import Value as V
from django.db.models import CharField

#region 專案Breeding周
class BreedingWeekList(generics.ListCreateAPIView):
    queryset = BreedingWeek.objects.all()
    serializer_class = BreedingWeekSerializer

class BreedingWeekDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingWeek.objects.all()
    serializer_class = BreedingWeekSerializer
#endregion
    
#region 專案Breeding
class ProjectBreedingList(generics.ListCreateAPIView):
    queryset = ProjectBreeding.objects.all()
    serializer_class = ProjectBreedingSerializer

class ProjectBreedingDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectBreeding.objects.all()
    serializer_class = ProjectBreedingSerializer
#endregion
    
#region 專案Breeding歷史
class ProjectBreedingHistoryList(generics.ListCreateAPIView):
    queryset = ProjectBreedingHistory.objects.all()
    serializer_class = ProjectBreedingHistorySerializer

class ProjectBreedingHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectBreedingHistory.objects.all()
    serializer_class = ProjectBreedingHistorySerializer
#endregion
    
#region 專案Breeding實際進度(工程版)
class ProjectBreedingProgressList(generics.ListCreateAPIView):
    queryset = ProjectBreedingProgress.objects.all()
    serializer_class = ProjectBreedingProgressSerializer

class ProjectBreedingProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectBreedingProgress.objects.all()
    serializer_class = ProjectBreedingProgressSerializer
#endregion
    
#region 專案Breeding預期進度(工程版)
class ProjectBreedingExpectedProgressList(generics.ListCreateAPIView):
    queryset = ProjectBreedingExpectedProgress.objects.all()
    serializer_class = ProjectBreedingExpectedProgressSerializer

class ProjectBreedingExpectedProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectBreedingExpectedProgress.objects.all()
    serializer_class = ProjectBreedingExpectedProgressSerializer
#endregion
    
#region 專案Breeding實際進度(銀行版)
class BreedingBankProgressList(generics.ListCreateAPIView):
    queryset = BreedingBankProgress.objects.all()
    serializer_class = BreedingBankProgressSerializer

class BreedingBankProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingBankProgress.objects.all()
    serializer_class = BreedingBankProgressSerializer
#endregion
    
#region 專案Breeding實際進度(銀行版)歷史
class BreedingBankHistoryList(generics.ListCreateAPIView):
    queryset = BreedingBankHistory.objects.all()
    serializer_class = BreedingBankHistorySerializer

class BreedingBankHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingBankHistory.objects.all()
    serializer_class = BreedingBankHistorySerializer
#endregion
    
#region 專案Breeding預期進度(銀行版)
class BreedingBankProgressExpectedList(generics.ListCreateAPIView):
    queryset = BreedingBankProgressExpected.objects.all()
    serializer_class = BreedingBankProgressExpectedSerializer

class BreedingBankProgressExpectedDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingBankProgressExpected.objects.all()
    serializer_class = BreedingBankProgressExpectedSerializer
#endregion
    
#region 專案Breeding預期進度(銀行版)歷史
class BreedingBankExpectedHistoryList(generics.ListCreateAPIView):
    queryset = BreedingBankExpectedHistory.objects.all()
    serializer_class = BreedingBankExpectedHistorySerializer

class BreedingBankExpectedHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingBankExpectedHistory.objects.all()
    serializer_class = BreedingBankExpectedHistorySerializer
#endregion

#region 計算周工程進度
class GetBreedingProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectBreedingProgress
                expected_model = ProjectBreedingExpectedProgress
            elif project_type == "bank":
                progress_model = BreedingBankProgress
                expected_model = BreedingBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                
                for breeding in breedings:
                    progress_records = progress_model.objects.filter(breeding_id=breeding.breeding_id).order_by('-breeding_week_id')
                    if progress_records.exists():
                        for progress_record in progress_records:
                            expected_record = expected_model.objects.filter(
                                breeding_id=breeding.breeding_id, 
                                breeding_week_id=progress_record.breeding_week_id,
                            ).first()
                            if expected_record:
                                week_data = BreedingWeek.objects.filter(week_id=expected_record.breeding_week_id.week_id).first()
                                if week_data:
                                    date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        date_ranges_with_data[date_range].append({
                                            "breeding_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "actual_lag_status": progress_record.lag_status,
                                            "expected_lag_status": expected_record.lag_status,
                                        })
                                    else:
                                        date_ranges_with_data[date_range].append({
                                            "breeding_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                        })
                    else:
                        today = datetime.datetime.now().strftime("%Y-%m-%d")
                        week_data = BreedingWeek.objects.filter(
                            end_date__lte=today
                        ).last()
                        if week_data:
                            date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                            if project_type == "bank":
                                date_ranges_with_data[date_range].append({
                                    "breeding_name": breeding.breeding_name,
                                    "construction_status": breeding.construction_status,
                                    "actual": 0,
                                    "expected": 0,
                                    "actual_lag_status": 0,
                                    "expected_lag_status": 0,
                                })
                            else:
                                date_ranges_with_data[date_range].append({
                                    "breeding_name": breeding.breeding_name,
                                    "construction_status": breeding.construction_status,
                                    "actual": 0,
                                    "expected": 0,
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
                        if project_type == "bank":
                            formatted_results.append({
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"]
                            })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
                    if project_type == "bank":
                        formatted_results.append({
                            "vb_name": item["breeding_name"],
                            "construction_status": item["construction_status"],
                            "date_range": latest_date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "actual_lag_status": item["actual_lag_status"],
                            "expected_lag_status": item["expected_lag_status"],
                        })
                    else:
                        formatted_results.append({
                            "vb_name": item["breeding_name"],
                            "construction_status": item["construction_status"],
                            "date_range": latest_date_range,
                            "actual": item["actual"],
                            "expected": item["expected"]
                        })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        if project_type == "bank":
                            formatted_results.append({
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"]
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
        
#region 計算所有季工程進度
class GetBreedingAllQuarterProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectBreedingProgress
                expected_model = ProjectBreedingExpectedProgress
            elif project_type == "bank":
                progress_model = BreedingBankProgress
                expected_model = BreedingBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)
            
            # 確認是否在工程時間內
            casess = ProjectLoop.objects.filter(loop_id=loop_id).first()
            engineering_start = min(casess.actualstart_date, casess.plannedstart_date)
            engineering_end = casess.actualend_date or datetime.date.today()

            relevant_years = BreedingWeek.objects.filter(
                start_date__gte=engineering_start,
                end_date__lte=engineering_end
            ).values_list('year', flat=True).distinct()
            
            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    for year in relevant_years:
                        for quarter in range(1, 5):
                            last_week_of_quarter = BreedingWeek.objects.filter(
                                year=year, 
                                quarter=quarter,
                                start_date__gte=engineering_start,
                                end_date__lte=engineering_end
                            ).aggregate(Max('week'))['week__max']

                            if last_week_of_quarter:
                                last_week = BreedingWeek.objects.get(
                                    year=year, 
                                    quarter=quarter, 
                                    week=last_week_of_quarter
                                )

                                progress_records = progress_model.objects.filter(
                                    breeding_id=breeding.breeding_id, 
                                    breeding_week_id=last_week.week_id
                                )
                                if progress_records.exists():
                                    for progress_record in progress_records:
                                        expected_record = expected_model.objects.filter(
                                            breeding_id=breeding.breeding_id, 
                                            breeding_week_id=progress_record.breeding_week_id
                                        ).first()
                                        if expected_record:
                                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                            if project_type == "bank":
                                                date_ranges_with_data[date_range].append({
                                                    "year": last_week.year,
                                                    "quarter": last_week.quarter,
                                                    "week": last_week.week,
                                                    "breeding_name": breeding.breeding_name,
                                                    "construction_status": breeding.construction_status,
                                                    "actual": progress_record.progress_percentage,
                                                    "expected": expected_record.progress_percentage,
                                                    "actual_lag_status": progress_record.lag_status,
                                                    "expected_lag_status": expected_record.lag_status,
                                                })
                                            else:
                                                date_ranges_with_data[date_range].append({
                                                    "year": last_week.year,
                                                    "quarter": last_week.quarter,
                                                    "week": last_week.week,
                                                    "breeding_name": breeding.breeding_name,
                                                    "construction_status": breeding.construction_status,
                                                    "actual": progress_record.progress_percentage,
                                                    "expected": expected_record.progress_percentage,
                                                })
                                else:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "breeding_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": 0,
                                            "expected": 0,
                                            "actual_lag_status": 0,
                                            "expected_lag_status": 0,
                                        })
                                    else:
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "breeding_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": 0,
                                            "expected": 0,
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
                        if project_type == "bank":
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"]
                            })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
                    if project_type == "bank":
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "vb_name": item["breeding_name"],
                            "construction_status": item["construction_status"],
                            "date_range": latest_date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "actual_lag_status": item["actual_lag_status"],
                            "expected_lag_status": item["expected_lag_status"],
                        })
                    else:
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "vb_name": item["breeding_name"],
                            "construction_status": item["construction_status"],
                            "date_range": latest_date_range,
                            "actual": item["actual"],
                            "expected": item["expected"]
                        })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        if project_type == "bank":
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"]
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
        
#region 計算季工程進度
class GetBreedingQuarterProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectBreedingProgress
                expected_model = ProjectBreedingExpectedProgress
            elif project_type == "bank":
                progress_model = BreedingBankProgress
                expected_model = BreedingBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            # 確認是否在工程時間內
            casess = ProjectLoop.objects.filter(loop_id=loop_id).first()
            engineering_start = min(casess.actualstart_date, casess.plannedstart_date)
            engineering_end = casess.actualend_date or datetime.date.today()

            # 確認工程結束年份
            engineering_end_year = engineering_end.year

            relevant_years = BreedingWeek.objects.filter(
                start_date__gte=engineering_start,
                end_date__lte=engineering_end,
                year=engineering_end_year
            ).values_list('year', flat=True).distinct()

            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    for year in relevant_years:
                        # 對於每個Breeding，找到當年度當季的最後一週
                        for quarter in range(1, 5):
                            last_week_of_quarter = BreedingWeek.objects.filter(
                                year=year, 
                                quarter=quarter,
                                start_date__gte=engineering_start,
                                end_date__lte=engineering_end
                            ).aggregate(Max('week'))['week__max']

                            if last_week_of_quarter:
                                last_week = BreedingWeek.objects.get(
                                    year=year, 
                                    quarter=quarter, 
                                    week=last_week_of_quarter
                                )

                                progress_records = progress_model.objects.filter(
                                    breeding_id=breeding.breeding_id, 
                                    breeding_week_id=last_week.week_id
                                )
                                if progress_records.exists():
                                    for progress_record in progress_records:
                                        expected_record = expected_model.objects.filter(
                                            breeding_id=breeding.breeding_id, 
                                            breeding_week_id=progress_record.breeding_week_id
                                        ).first()
                                        if expected_record:
                                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                            if project_type == "bank":
                                                date_ranges_with_data[date_range].append({
                                                    "year": last_week.year,
                                                    "quarter": last_week.quarter,
                                                    "week": last_week.week,
                                                    "breeding_name": breeding.breeding_name,
                                                    "construction_status": breeding.construction_status,
                                                    "actual": progress_record.progress_percentage,
                                                    "expected": expected_record.progress_percentage,
                                                    "actual_lag_status": progress_record.lag_status,
                                                    "expected_lag_status": expected_record.lag_status,
                                                })
                                            else:
                                                date_ranges_with_data[date_range].append({
                                                    "year": last_week.year,
                                                    "quarter": last_week.quarter,
                                                    "week": last_week.week,
                                                    "breeding_name": breeding.breeding_name,
                                                    "construction_status": breeding.construction_status,
                                                    "actual": progress_record.progress_percentage,
                                                    "expected": expected_record.progress_percentage,
                                                })
                                else:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "breeding_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": 0,
                                            "expected": 0,
                                            "actual_lag_status": 0,
                                            "expected_lag_status": 0,
                                        })
                                    else:
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "breeding_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": 0,
                                            "expected": 0,
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
                        if project_type == "bank":
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"]
                            })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
                    if project_type == "bank":
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "vb_name": item["breeding_name"],
                            "construction_status": item["construction_status"],
                            "date_range": latest_date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "actual_lag_status": item["actual_lag_status"],
                            "expected_lag_status": item["expected_lag_status"],
                        })
                    else:
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "vb_name": item["breeding_name"],
                            "construction_status": item["construction_status"],
                            "date_range": latest_date_range,
                            "actual": item["actual"],
                            "expected": item["expected"]
                        })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        if project_type == "bank":
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "vb_name": item["breeding_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"]
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
class GetBreedingQuarterChartProgress(APIView):
    def get(self, request, loop_id, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            if project_type == "engineering":
                progress_model = ProjectBreedingProgress
                expected_model = ProjectBreedingExpectedProgress
            elif project_type == "bank":
                progress_model = BreedingBankProgress
                expected_model = BreedingBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            datasets = []
            relevant_years_and_quarters = set()

            # 確認是否在工程時間內
            casess = ProjectLoop.objects.filter(loop_id=loop_id).first()
            engineering_start = min(casess.actualstart_date, casess.plannedstart_date)
            engineering_end = casess.actualend_date or datetime.date.today()

            # 確認工程結束年份
            engineering_end_year = engineering_end.year

            for casa in cases:
                breedings = ProjectBreeding.objects.filter(case_id=casa.case_id)
                for breeding in breedings:
                    # 根據工程日期範圍過濾 Week，並收集指定年份的季度
                    years_and_quarters = BreedingWeek.objects.filter(
                        start_date__gte=engineering_start,
                        end_date__lte=engineering_end,
                        year=engineering_end_year  # 只取出該年分季度的資料
                    ).values_list('year', 'quarter').distinct()

                    for year, quarter in years_and_quarters:
                        relevant_years_and_quarters.add((year, quarter))

            # 將收集到的年份和季度排序並生成標籤
            all_years_and_quarters = sorted(relevant_years_and_quarters)
            labels = [f"{year} Q{quarter}" for year, quarter in all_years_and_quarters]

            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    actual_data = []
                    expected_data = []
                    for year, quarter in all_years_and_quarters:
                        last_week_of_quarter = BreedingWeek.objects.filter(
                            year=engineering_end_year, 
                            quarter=quarter,
                            start_date__gte=engineering_start,
                            end_date__lte=engineering_end
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = BreedingWeek.objects.get(
                                year=engineering_end_year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_record = progress_model.objects.filter(
                                breeding_id=breeding.breeding_id, 
                                breeding_week_id=last_week.week_id
                            ).first()

                            expected_record = expected_model.objects.filter(
                                breeding_id=breeding.breeding_id, 
                                breeding_week_id=last_week.week_id
                            ).first() if progress_record else None

                            if progress_record == None and breeding.construction_status == 1:
                                actual_percentage = 100
                                expected_percentage = 100
                            elif progress_record == None:
                                actual_percentage = 0
                                expected_percentage = 0
                            else:
                                actual_percentage = (progress_record.progress_percentage * 100) if progress_record and progress_record.progress_percentage is not None else 0
                                expected_percentage = (expected_record.progress_percentage * 100) if expected_record and expected_record.progress_percentage is not None else 0
                            
                            actual_data.append(actual_percentage)
                            expected_data.append(expected_percentage)

                    base_color = get_color_from_name(breeding.breeding_name)

                    datasets.append({
                        "label": f"{breeding.breeding_name} 實際",
                        "data": actual_data,
                        "backgroundColor": base_color,
                        "borderColor": base_color
                    })
                    datasets.append({
                        "label": f"{breeding.breeding_name} 預計",
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
class GetBreedingAllQuarterChartProgress(APIView):
    def get(self, request, loop_id, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            if project_type == "engineering":
                progress_model = ProjectBreedingProgress
                expected_model = ProjectBreedingExpectedProgress
            elif project_type == "bank":
                progress_model = BreedingBankProgress
                expected_model = BreedingBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)


            datasets = []
            relevant_years_and_quarters = set()

            # 確認是否在工程時間內
            casess = ProjectLoop.objects.filter(loop_id=loop_id).first()
            engineering_start = min(casess.actualstart_date, casess.plannedstart_date)
            engineering_end = casess.actualend_date or datetime.date.today()

            # 遍歷所有案件，收集相關年份和季度
            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    # 根據工程日期範圍過濾 PvWeek，並收集年份和季度
                    years_and_quarters = BreedingWeek.objects.filter(
                        start_date__gte=engineering_start,
                        end_date__lte=engineering_end
                    ).values_list('year', 'quarter').distinct()

                    for year, quarter in years_and_quarters:
                        relevant_years_and_quarters.add((year, quarter))

            # 將收集到的年份和季度排序並生成標籤
            all_years_and_quarters = sorted(relevant_years_and_quarters)
            labels = [f"{year} Q{quarter}" for year, quarter in all_years_and_quarters]

            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    # 根據工程日期範圍過濾 BreedingWeek，並收集年份和季度
                    years_and_quarters = BreedingWeek.objects.filter(
                        start_date__gte=engineering_start,
                        end_date__lte=engineering_end
                    ).values_list('year', 'quarter').distinct()

                    for year, quarter in years_and_quarters:
                        relevant_years_and_quarters.add((year, quarter))

            # 將收集到的年份和季度排序並生成標籤
            all_years_and_quarters = sorted(relevant_years_and_quarters)
            labels = [f"{year} Q{quarter}" for year, quarter in all_years_and_quarters]

            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    actual_data = []
                    expected_data = []

                    for year, quarter in all_years_and_quarters:
                        # 找到每個季度的最後一週
                        last_week_of_quarter = BreedingWeek.objects.filter(
                            year=year, 
                            quarter=quarter,
                            start_date__gte=engineering_start,
                            end_date__lte=engineering_end
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = BreedingWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )
                            
                            progress_record = progress_model.objects.filter(
                                breeding_id=breeding.breeding_id, 
                                breeding_week_id=last_week.week_id
                            ).first()

                            expected_record = expected_model.objects.filter(
                                breeding_id=breeding.breeding_id, 
                                breeding_week_id=last_week.week_id
                            ).first() if progress_record else None

                            if progress_record == None and breeding.construction_status == 1:
                                actual_percentage = 100
                                expected_percentage = 100
                            elif progress_record == None:
                                actual_percentage = 0
                                expected_percentage = 0
                            else:
                                actual_percentage = (progress_record.progress_percentage * 100) if progress_record and progress_record.progress_percentage is not None else 0
                                expected_percentage = (expected_record.progress_percentage * 100) if expected_record and expected_record.progress_percentage is not None else 0
     
                            actual_data.append(actual_percentage)
                            expected_data.append(expected_percentage)

                    base_color = get_color_from_name(breeding.breeding_name)

                    datasets.append({
                        "label": f"{breeding.breeding_name} Actual",
                        "data": actual_data,
                        "backgroundColor": base_color,
                        "borderColor": base_color
                    })
                    datasets.append({
                        "label": f"{breeding.breeding_name} Expected",
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
class GetBreedingWeekChartProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            if project_type == "engineering":
                progress_model = ProjectBreedingProgress
                expected_model = ProjectBreedingExpectedProgress
            elif project_type == "bank":
                progress_model = BreedingBankProgress
                expected_model = BreedingBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            # 確認是否在工程時間內
            casess = ProjectLoop.objects.filter(loop_id=loop_id).first()
            engineering_start = min(casess.actualstart_date, casess.plannedstart_date)
            engineering_end = casess.actualend_date or datetime.date.today()

            # 獲取所有周，並由新到舊排序
            all_weeks = BreedingWeek.objects.filter(
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
            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    actual_data = []
                    expected_data = []
                    for week in sorted_weeks:
                        progress_record = progress_model.objects.filter(
                            breeding_id=breeding.breeding_id,
                            breeding_week_id=week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            breeding_id=breeding.breeding_id,
                            breeding_week_id=week.week_id
                        ).first()

                        if progress_record == None and breeding.construction_status == 1:
                            actual_percentage = 100
                            expected_percentage = 100
                        elif progress_record == None:
                            actual_percentage = 0
                            expected_percentage = 0
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record and progress_record.progress_percentage is not None else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record and expected_record.progress_percentage is not None else 0
     
                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                    base_color = get_color_from_name(breeding.breeding_name)

                    datasets.append({
                        "label": f"{breeding.breeding_name} Actual",
                        "data": actual_data,
                        "backgroundColor": base_color,
                        "borderColor": base_color
                    })
                    datasets.append({
                        "label": f"{breeding.breeding_name} Expected",
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

#region 計算迴路純養殖周進度
class GetOnlyLoopBreedingProgress(APIView):
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
                                    "actual": progress_record.breeding_progress_percentage,
                                    "expected": expected_record.breeding_progress_percentage,
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

#region 計算所有季Loop單純Breeding工程進度     
class GetOnlyLoopBreedingAllQuarterProgress(APIView):
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

            relevant_years = BreedingWeek.objects.filter(
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
                                            "actual": progress_record.breeding_progress_percentage,
                                            "expected": expected_record.breeding_progress_percentage,
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

            return Response({
                'results': formatted_results,
                'totalPages': paginator.num_pages,
                'currentPage': currentPage
            })
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion

#region 計算即時季Loop單純Breeding工程進度       
class GetOnlyLoopBreedingQuarterProgress(APIView):
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

            relevant_years = BreedingWeek.objects.filter(
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
                                            "actual": progress_record.breeding_progress_percentage,
                                            "expected": expected_record.breeding_progress_percentage,
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

            return Response({
                'results': formatted_results,
                'totalPages': paginator.num_pages,
                'currentPage': currentPage
            })
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion

#region 計算純Breeding迴路季工程進度報表
class GetLoopBreedingQuarterChartProgress(APIView):   
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
                    last_week_of_quarter = BreedingWeek.objects.filter(
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
                        elif progress_record == None:
                            actual_percentage = 0
                            expected_percentage = 0
                        else:
                            actual_percentage = (progress_record.breeding_progress_percentage * 100) if progress_record and progress_record.breeding_progress_percentage is not None else 0
                            expected_percentage = (expected_record.breeding_progress_percentage * 100) if expected_record and expected_record.breeding_progress_percentage is not None else 0
      
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
        
#region 計算純Breeding迴路所有季工程進度報表
class GetLoopBreedingAllQuarterChartProgress(APIView):
    
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
                    # 找到每個季度的最後一週
                    last_week_of_quarter = BreedingWeek.objects.filter(
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
                    elif progress_record == None:
                        actual_percentage = 0
                        expected_percentage = 0
                    else:
                        actual_percentage = (progress_record.breeding_progress_percentage * 100) if progress_record and progress_record.breeding_progress_percentage is not None else 0
                        expected_percentage = (expected_record.breeding_progress_percentage * 100) if expected_record and expected_record.breeding_progress_percentage is not None else 0
                    
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
        
#region 計算純Breeding迴路所有周工程進度報表
class GetLoopBreedingWeekChartProgress(APIView):
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
                    elif progress_record == None:
                        actual_percentage = 0
                        expected_percentage = 0
                    else:
                        actual_percentage = (progress_record.breeding_progress_percentage * 100) if progress_record and progress_record.breeding_progress_percentage is not None else 0
                        expected_percentage = (expected_record.breeding_progress_percentage * 100) if expected_record and expected_record.breeding_progress_percentage is not None else 0
                
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