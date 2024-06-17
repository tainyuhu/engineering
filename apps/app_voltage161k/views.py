import datetime
from rest_framework import generics
from .models import Voltage161KBankExpectedHistory, Voltage161KBankHistory, Voltage161KBankProgress, Voltage161KBankProgressExpected, ProjectVoltage161K, ProjectVoltage161KExpectedProgress, ProjectVoltage161KHistory, ProjectVoltage161KProgress, Voltage161KWeek
from .serializers import Voltage161KBankExpectedHistorySerializer, Voltage161KBankHistorySerializer, Voltage161KBankProgressExpectedSerializer, Voltage161KBankProgressSerializer, ProjectVoltage161KExpectedProgressSerializer, ProjectVoltage161KHistorySerializer, ProjectVoltage161KProgressSerializer, ProjectVoltage161KSerializer, Voltage161KWeekSerializer
from rest_framework.views import APIView
from apps.app_project.models import Project
from rest_framework.response import Response
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Max
import hashlib
from django.db.models.functions import Concat
from django.db.models import Value as V
from django.db.models import CharField

#region 專案Voltage161K周
class Voltage161KWeekList(generics.ListCreateAPIView):
    queryset = Voltage161KWeek.objects.all()
    serializer_class = Voltage161KWeekSerializer

class Voltage161KWeekDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage161KWeek.objects.all()
    serializer_class = Voltage161KWeekSerializer
#endregion
    
#region 專案Voltage161K
class ProjectVoltage161KList(generics.ListCreateAPIView):
    queryset = ProjectVoltage161K.objects.all()
    serializer_class = ProjectVoltage161KSerializer

class ProjectVoltage161KDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectVoltage161K.objects.all()
    serializer_class = ProjectVoltage161KSerializer
#endregion
    
#region 專案Voltage161K歷史
class ProjectVoltage161KHistoryList(generics.ListCreateAPIView):
    queryset = ProjectVoltage161KHistory.objects.all()
    serializer_class = ProjectVoltage161KHistorySerializer

class ProjectVoltage161KHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectVoltage161KHistory.objects.all()
    serializer_class = ProjectVoltage161KHistorySerializer
#endregion
    
#region 專案Voltage161K實際進度(工程版)
class ProjectVoltage161KProgressList(generics.ListCreateAPIView):
    queryset = ProjectVoltage161KProgress.objects.all()
    serializer_class = ProjectVoltage161KProgressSerializer

class ProjectVoltage161KProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectVoltage161KProgress.objects.all()
    serializer_class = ProjectVoltage161KProgressSerializer
#endregion
    
#region 專案Voltage161K預期進度(工程版)
class ProjectVoltage161KExpectedProgressList(generics.ListCreateAPIView):
    queryset = ProjectVoltage161KExpectedProgress.objects.all()
    serializer_class = ProjectVoltage161KExpectedProgressSerializer

class ProjectVoltage161KExpectedProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectVoltage161KExpectedProgress.objects.all()
    serializer_class = ProjectVoltage161KExpectedProgressSerializer
#endregion
    
#region 專案Voltage161K實際進度(銀行版)
class Voltage161KBankProgressList(generics.ListCreateAPIView):
    queryset = Voltage161KBankProgress.objects.all()
    serializer_class = Voltage161KBankProgressSerializer

class Voltage161KBankProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage161KBankProgress.objects.all()
    serializer_class = Voltage161KBankProgressSerializer
#endregion
    
#region 專案Voltage161K實際進度(銀行版)歷史
class Voltage161KBankHistoryList(generics.ListCreateAPIView):
    queryset = Voltage161KBankHistory.objects.all()
    serializer_class = Voltage161KBankHistorySerializer

class Voltage161KBankHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage161KBankHistory.objects.all()
    serializer_class = Voltage161KBankHistorySerializer
#endregion
    
#region 專案Voltage161K預期進度(銀行版)
class Voltage161KBankProgressExpectedList(generics.ListCreateAPIView):
    queryset = Voltage161KBankProgressExpected.objects.all()
    serializer_class = Voltage161KBankProgressExpectedSerializer

class Voltage161KBankProgressExpectedDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage161KBankProgressExpected.objects.all()
    serializer_class = Voltage161KBankProgressExpectedSerializer
#endregion
    
#region 專案Voltage161K預期進度(銀行版)歷史
class Voltage161KBankExpectedHistoryList(generics.ListCreateAPIView):
    queryset = Voltage161KBankExpectedHistory.objects.all()
    serializer_class = Voltage161KBankExpectedHistorySerializer

class Voltage161KBankExpectedHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage161KBankExpectedHistory.objects.all()
    serializer_class = Voltage161KBankExpectedHistorySerializer
#endregion

#region 計算所有周Voltage161K工程進度
class GetVoltage161KProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            projects = Project.objects.filter(project_id=project_id)
            voltage161ks = ProjectVoltage161K.objects.filter(project_id__in=projects)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage161KProgress
                expected_model = ProjectVoltage161KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage161KBankProgress
                expected_model = Voltage161KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for voltage161k in voltage161ks:
                progress_records = progress_model.objects.filter(voltage161k_id=voltage161k.voltage161k_id).order_by('-voltage161k_week_id')
                if progress_records.exists():
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            voltage161k_id=voltage161k.voltage161k_id, 
                            voltage161k_week_id=progress_record.voltage161k_week_id
                        ).first()
                        if expected_record:
                            week_data = Voltage161KWeek.objects.filter(week_id=expected_record.voltage161k_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    date_ranges_with_data[date_range].append({
                                        "loop_name": voltage161k.voltage161k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": voltage161k.construction_status,
                                        "actual_lag_status": progress_record.lag_status,
                                        "expected_lag_status": expected_record.lag_status,
                                    })
                                else:
                                    date_ranges_with_data[date_range].append({
                                        "loop_name": voltage161k.voltage161k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": voltage161k.construction_status,
                                    })
                else:
                    today = datetime.datetime.now().strftime("%Y-%m-%d")
                    week_data = Voltage161KWeek.objects.filter(
                        end_date__lte=today
                    ).last()
                    if week_data:
                        date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                        if project_type == "bank":
                            date_ranges_with_data[date_range].append({
                                "loop_name": voltage161k.voltage161k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": voltage161k.construction_status,
                                "actual_lag_status": 0,
                                "expected_lag_status": 0,
                            })
                        else:
                            date_ranges_with_data[date_range].append({
                                "loop_name": voltage161k.voltage161k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": voltage161k.construction_status,
                            })

            ordered_date_ranges = OrderedDict(sorted(date_ranges_with_data.items(), reverse=True))
            latest_date_range, latest_data = next(iter(ordered_date_ranges.items()))

            paginator = Paginator(list(ordered_date_ranges.items()), itemsPerPage)
            page_obj = paginator.get_page(currentPage)

            formatted_results = []
            if currentPage == 1:
                for date_range, data in page_obj.object_list:
                    for item in data:
                        if project_type == "bank":
                            formatted_results.append({
                                "loop_name": item["loop_name"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "construction_status": item["construction_status"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "loop_name": item["loop_name"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "construction_status": item["construction_status"],
                            })
            else:
                for item in latest_data:
                    if project_type == "bank":
                        formatted_results.append({
                            "loop_name": item["loop_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                            "actual_lag_status": item["actual_lag_status"],
                            "expected_lag_status": item["expected_lag_status"],
                        })
                    else:
                        formatted_results.append({
                            "loop_name": item["loop_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })
                for date_range, data in page_obj.object_list:
                    for item in data:
                        if project_type == "bank":
                            formatted_results.append({
                                "loop_name": item["loop_name"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "construction_status": item["construction_status"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
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

#region 計算所有季Voltage161K工程進度     
class GetVoltage161KAllQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            projects = Project.objects.filter(project_id=project_id)
            voltage161ks = ProjectVoltage161K.objects.filter(project_id__in=projects)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage161KProgress
                expected_model = ProjectVoltage161KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage161KBankProgress
                expected_model = Voltage161KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for voltage161k in voltage161ks:
               # 找到每一個季度的最後一周
                all_years = Voltage161KWeek.objects.values_list('year', flat=True).distinct()
                for year in all_years:
                    for quarter in range(1, 5):
                        last_week_of_quarter = Voltage161KWeek.objects.filter(
                            year=year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = Voltage161KWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = progress_model.objects.filter(
                                voltage161k_id=voltage161k.voltage161k_id, 
                                voltage161k_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        voltage161k_id=voltage161k.voltage161k_id, 
                                        voltage161k_week_id=progress_record.voltage161k_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        if project_type == "bank":
                                            date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "loop_name": voltage161k.voltage161k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": voltage161k.construction_status,
                                                "actual_lag_status": progress_record.lag_status,
                                                "expected_lag_status": expected_record.lag_status,
                                            })
                                        else:
                                            date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "loop_name": voltage161k.voltage161k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": voltage161k.construction_status,
                                            })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    date_ranges_with_data[date_range].append({
                                        "loop_name": voltage161k.voltage161k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": voltage161k.construction_status,
                                        "actual_lag_status": 0,
                                        "expected_lag_status": 0,
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                    })
                                else:
                                    date_ranges_with_data[date_range].append({
                                        "loop_name": voltage161k.voltage161k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": voltage161k.construction_status,
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
                        if project_type == "bank":
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "loop_name": item["loop_name"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "construction_status": item["construction_status"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
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
                    if project_type == "bank":
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "loop_name": item["loop_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                            "actual_lag_status": item["actual_lag_status"],
                            "expected_lag_status": item["expected_lag_status"],
                        })
                    else:
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
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        if project_type == "bank":
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "loop_name": item["loop_name"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "construction_status": item["construction_status"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
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

#region 計算即時季Voltage161K工程進度       
class GetVoltage161KQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:
            current_year = datetime.datetime.now().year
            projects = Project.objects.filter(project_id=project_id)
            voltage161ks = ProjectVoltage161K.objects.filter(project_id__in=projects)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage161KProgress
                expected_model = ProjectVoltage161KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage161KBankProgress
                expected_model = Voltage161KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for voltage161k in voltage161ks:
                for quarter in range(1, 5):
                    last_week_of_quarter = Voltage161KWeek.objects.filter(
                        year=current_year, 
                        quarter=quarter
                    ).aggregate(Max('week'))['week__max']

                    if last_week_of_quarter:
                        last_week = Voltage161KWeek.objects.get(
                            year=current_year, 
                            quarter=quarter, 
                            week=last_week_of_quarter
                        )

                        progress_records = progress_model.objects.filter(
                            voltage161k_id=voltage161k.voltage161k_id, 
                            voltage161k_week_id=last_week.week_id
                        )
                        if progress_records.exists():
                            for progress_record in progress_records:
                                expected_record = expected_model.objects.filter(
                                    voltage161k_id=voltage161k.voltage161k_id, 
                                    voltage161k_week_id=progress_record.voltage161k_week_id
                                ).first()
                                if expected_record:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "loop_name": voltage161k.voltage161k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage161k.construction_status,
                                            "actual_lag_status": progress_record.lag_status,
                                            "expected_lag_status": expected_record.lag_status,
                                        })
                                    else:
                                        date_ranges_with_data[date_range].append({
                                            "loop_name": voltage161k.voltage161k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage161k.construction_status,
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                        })
                        else:
                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                            if project_type == "bank":
                                date_ranges_with_data[date_range].append({
                                    "loop_name": voltage161k.voltage161k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage161k.construction_status,
                                    "actual_lag_status": 0,
                                    "expected_lag_status": 0,
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                })
                            else:
                                date_ranges_with_data[date_range].append({
                                    "loop_name": voltage161k.voltage161k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage161k.construction_status,
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
                        if project_type == "bank":
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "loop_name": item["loop_name"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "construction_status": item["construction_status"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
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
                    if project_type == "bank":
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "loop_name": item["loop_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                            "actual_lag_status": item["actual_lag_status"],
                            "expected_lag_status": item["expected_lag_status"],
                        })
                    else:
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
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        if project_type == "bank":
                            formatted_results.append({
                                "year": item["year"],
                                "quarter": item["quarter"],
                                "week": item["week"],
                                "loop_name": item["loop_name"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "construction_status": item["construction_status"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
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
class GetVoltage161KQuarterChartProgress(APIView):
    
    def get(self, request, project_id, project_type):
        try:

            projects = Project.objects.filter(project_id=project_id)
            voltage161ks = ProjectVoltage161K.objects.filter(project_id__in=projects)

            if project_type == "engineering":
                progress_model = ProjectVoltage161KProgress
                expected_model = ProjectVoltage161KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage161KBankProgress
                expected_model = Voltage161KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            current_year = datetime.datetime.now().year
            labels = [f"Q{quarter}" for quarter in range(1, 5)]

            datasets = []

            for voltage161k in voltage161ks:
                actual_data = []
                expected_data = []
                for quarter in range(1, 5):
                    last_week_of_quarter = Voltage161KWeek.objects.filter(
                        year=current_year, 
                        quarter=quarter
                    ).aggregate(Max('week'))['week__max']

                    if last_week_of_quarter:
                        last_week = Voltage161KWeek.objects.get(
                            year=current_year, 
                            quarter=quarter, 
                            week=last_week_of_quarter
                        )

                        progress_record = progress_model.objects.filter(
                            voltage161k_id=voltage161k.voltage161k_id, 
                            voltage161k_week_id=last_week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            voltage161k_id=voltage161k.voltage161k_id, 
                            voltage161k_week_id=last_week.week_id
                        ).first() if progress_record else None

                        if voltage161k.construction_status == 1 :
                                actual_percentage = 100
                                expected_percentage = 100
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(voltage161k.voltage161k_name)

                datasets.append({
                    "label": f"{voltage161k.voltage161k_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{voltage161k.voltage161k_name} 預計",
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
class GetVoltage161KAllQuarterChartProgress(APIView):
    
    def get(self, request, project_id, project_type):
        try:

            projects = Project.objects.filter(project_id=project_id)
            voltage161ks = ProjectVoltage161K.objects.filter(project_id__in=projects)

            if project_type == "engineering":
                progress_model = ProjectVoltage161KProgress
                expected_model = ProjectVoltage161KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage161KBankProgress
                expected_model = Voltage161KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            datasets = []
            all_years = Voltage161KWeek.objects.values_list('year', flat=True).order_by('year').distinct()

            labels = [f"{year} Q{quarter}" for year in all_years for quarter in range(1, 5)]

            for voltage161k in voltage161ks:
                actual_data = []
                expected_data = []
                for year in all_years:
                    quarters_with_data = Voltage161KWeek.objects.filter(year=year).values_list('quarter', flat=True).distinct()

                    for quarter in quarters_with_data:
                        last_week_of_quarter = Voltage161KWeek.objects.filter(
                            year=year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = Voltage161KWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                        progress_record = progress_model.objects.filter(
                            voltage161k_id=voltage161k.voltage161k_id, 
                            voltage161k_week_id=last_week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            voltage161k_id=voltage161k.voltage161k_id, 
                            voltage161k_week_id=last_week.week_id
                        ).first() if progress_record else None

                        if voltage161k.construction_status == 1 :
                                actual_percentage = 100
                                expected_percentage = 100
                        else:
                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(voltage161k.voltage161k_name)

                datasets.append({
                    "label": f"{voltage161k.voltage161k_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{voltage161k.voltage161k_name} 預計",
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
class GetVoltage161KWeekChartProgress(APIView):
    
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            projects = Project.objects.filter(project_id=project_id)
            voltage161ks = ProjectVoltage161K.objects.filter(project_id__in=projects)

            if project_type == "engineering":
                progress_model = ProjectVoltage161KProgress
                expected_model = ProjectVoltage161KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage161KBankProgress
                expected_model = Voltage161KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            # 獲取所有周，並由新到舊排序
            all_weeks = Voltage161KWeek.objects.annotate(
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

            for voltage161k in voltage161ks:
                actual_data = []
                expected_data = []
                for week in sorted_weeks:
                    progress_record = progress_model.objects.filter(
                        voltage161k_id=voltage161k.voltage161k_id,
                        voltage161k_week_id=week.week_id
                    ).first()

                    expected_record = expected_model.objects.filter(
                        voltage161k_id=voltage161k.voltage161k_id,
                        voltage161k_week_id=week.week_id
                    ).first()

                    if voltage161k.construction_status == 1 :
                                actual_percentage = 100
                                expected_percentage = 100
                    else:
                        actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                        expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                    actual_data.append(actual_percentage)
                    expected_data.append(expected_percentage)

                base_color = get_color_from_name(voltage161k.voltage161k_name)

                datasets.append({
                    "label": f"{voltage161k.voltage161k_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{voltage161k.voltage161k_name} 預計",
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
