import datetime
from rest_framework import generics
from .models import BreedingBankExpectedHistory, BreedingBankHistory, BreedingBankProgress, BreedingBankProgressExpected, ProjectBreeding, ProjectBreedingExpectedProgress, ProjectBreedingHistory, ProjectBreedingProgress, BreedingWeek
from .serializers import BreedingBankExpectedHistorySerializer, BreedingBankHistorySerializer, BreedingBankProgressExpectedSerializer, BreedingBankProgressSerializer, ProjectBreedingExpectedProgressSerializer, ProjectBreedingHistorySerializer, ProjectBreedingProgressSerializer, ProjectBreedingSerializer, BreedingWeekSerializer
from rest_framework.views import APIView
from apps.app_project.models import ProjectCase
from rest_framework.response import Response
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator
from django.db.models import Max
import hashlib

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
            print(f"Parameters: loop_id={loop_id}, currentPage={currentPage}, itemsPerPage={itemsPerPage}, project_type={project_type}")
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            print(f"Found {cases.count()} cases for loop_id {loop_id} {project_type}")

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
                                print(f"expected_record.breeding_week_id: {expected_record.breeding_week_id.week_id}")
                                week_data = BreedingWeek.objects.filter(week_id=expected_record.breeding_week_id.week_id).first()
                                if week_data:
                                    date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                    date_ranges_with_data[date_range].append({
                                        "breeding_name": breeding.breeding_name,
                                        "construction_status": breeding.construction_status,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage
                                    })
                    else:
                        today = datetime.datetime.now().strftime("%Y-%m-%d")
                        week_data = BreedingWeek.objects.filter(
                            end_date__lte=today
                        ).last()
                        if week_data:
                            date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
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
            print(f"Parameters: loop_id={loop_id}, currentPage={currentPage}, itemsPerPage={itemsPerPage}, project_type={project_type}")
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            print(f"Found {cases.count()} cases for loop_id {loop_id} {project_type}")

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
                    # 找到每一個季度的最後一周
                    all_years = BreedingWeek.objects.values_list('year', flat=True).distinct()
                    for year in all_years:
                        for quarter in range(1, 5):
                            last_week_of_quarter = BreedingWeek.objects.filter(
                                year=year, 
                                quarter=quarter
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
                                            date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "breeding_name": breeding.breeding_name,
                                                "construction_status": breeding.construction_status,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage
                                            })
                                else:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    date_ranges_with_data[date_range].append({
                                        "breeding_name": breeding.breeding_name,
                                        "construction_status": breeding.construction_status,
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
                            "vb_name": item["breeding_name"],
                            "construction_status": item["construction_status"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"]
                        })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
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
            print(f"Parameters: loop_id={loop_id}, currentPage={currentPage}, itemsPerPage={itemsPerPage}, project_type={project_type}")
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            print(f"Found {cases.count()} cases for loop_id {loop_id} {project_type}")

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

            current_year = datetime.datetime.now().year
            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    # 對於每個Breeding，找到當年度當季的最後一週
                    for quarter in range(1, 5):
                        last_week_of_quarter = BreedingWeek.objects.filter(
                            year=current_year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = BreedingWeek.objects.get(
                                year=current_year, 
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
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "breeding_name": breeding.breeding_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage
                                        })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "breeding_name": breeding.breeding_name,
                                    "construction_status": breeding.construction_status,
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
                            "vb_name": item["breeding_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"]
                        })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
                    formatted_results.append({
                        "year": item["year"],
                        "quarter": item["quarter"],
                        "week": item["week"],
                        "vb_name": item["breeding_name"],
                        "date_range": latest_date_range,
                        "actual": item["actual"],
                        "expected": item["expected"]
                    })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "vb_name": item["breeding_name"],
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

            current_year = datetime.datetime.now().year
            labels = [f"Q{quarter}" for quarter in range(1, 5)]

            datasets = []

            for case in cases:
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for breeding in breedings:
                    actual_data = []
                    expected_data = []
                    for quarter in range(1, 5):
                        last_week_of_quarter = BreedingWeek.objects.filter(
                            year=current_year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = BreedingWeek.objects.get(
                                year=current_year, 
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

                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

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