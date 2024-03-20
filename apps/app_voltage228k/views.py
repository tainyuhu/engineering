import datetime
from rest_framework import generics
from .models import Voltage228KBankExpectedHistory, Voltage228KBankHistory, Voltage228KBankProgress, Voltage228KBankProgressExpected, ProjectVoltage228K, ProjectVoltage228KExpectedProgress, ProjectVoltage228KHistory, ProjectVoltage228KProgress, Voltage228KWeek
from .serializers import Voltage228KBankExpectedHistorySerializer, Voltage228KBankHistorySerializer, Voltage228KBankProgressExpectedSerializer, Voltage228KBankProgressSerializer, ProjectVoltage228KExpectedProgressSerializer, ProjectVoltage228KHistorySerializer, ProjectVoltage228KProgressSerializer, ProjectVoltage228KSerializer, Voltage228KWeekSerializer
from rest_framework.views import APIView
from apps.app_project.models import ProjectCase
from rest_framework.response import Response
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator
from django.db.models import Max
import hashlib

#region 專案Voltage228K周
class Voltage228KWeekList(generics.ListCreateAPIView):
    queryset = Voltage228KWeek.objects.all()
    serializer_class = Voltage228KWeekSerializer

class Voltage228KWeekDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage228KWeek.objects.all()
    serializer_class = Voltage228KWeekSerializer
#endregion
    
#region 專案Voltage228K
class ProjectVoltage228KList(generics.ListCreateAPIView):
    queryset = ProjectVoltage228K.objects.all()
    serializer_class = ProjectVoltage228KSerializer

class ProjectVoltage228KDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectVoltage228K.objects.all()
    serializer_class = ProjectVoltage228KSerializer
#endregion
    
#region 專案Voltage228K歷史
class ProjectVoltage228KHistoryList(generics.ListCreateAPIView):
    queryset = ProjectVoltage228KHistory.objects.all()
    serializer_class = ProjectVoltage228KHistorySerializer

class ProjectVoltage228KHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectVoltage228KHistory.objects.all()
    serializer_class = ProjectVoltage228KHistorySerializer
#endregion
    
#region 專案Voltage228K實際進度(工程版)
class ProjectVoltage228KProgressList(generics.ListCreateAPIView):
    queryset = ProjectVoltage228KProgress.objects.all()
    serializer_class = ProjectVoltage228KProgressSerializer

class ProjectVoltage228KProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectVoltage228KProgress.objects.all()
    serializer_class = ProjectVoltage228KProgressSerializer
#endregion
    
#region 專案Voltage228K預期進度(工程版)
class ProjectVoltage228KExpectedProgressList(generics.ListCreateAPIView):
    queryset = ProjectVoltage228KExpectedProgress.objects.all()
    serializer_class = ProjectVoltage228KExpectedProgressSerializer

class ProjectVoltage228KExpectedProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectVoltage228KExpectedProgress.objects.all()
    serializer_class = ProjectVoltage228KExpectedProgressSerializer
#endregion
    
#region 專案Voltage228K實際進度(銀行版)
class Voltage228KBankProgressList(generics.ListCreateAPIView):
    queryset = Voltage228KBankProgress.objects.all()
    serializer_class = Voltage228KBankProgressSerializer

class Voltage228KBankProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage228KBankProgress.objects.all()
    serializer_class = Voltage228KBankProgressSerializer
#endregion
    
#region 專案Voltage228K實際進度(銀行版)歷史
class Voltage228KBankHistoryList(generics.ListCreateAPIView):
    queryset = Voltage228KBankHistory.objects.all()
    serializer_class = Voltage228KBankHistorySerializer

class Voltage228KBankHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage228KBankHistory.objects.all()
    serializer_class = Voltage228KBankHistorySerializer
#endregion
    
#region 專案Voltage228K預期進度(銀行版)
class Voltage228KBankProgressExpectedList(generics.ListCreateAPIView):
    queryset = Voltage228KBankProgressExpected.objects.all()
    serializer_class = Voltage228KBankProgressExpectedSerializer

class Voltage228KBankProgressExpectedDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage228KBankProgressExpected.objects.all()
    serializer_class = Voltage228KBankProgressExpectedSerializer
#endregion
    
#region 專案Voltage228K預期進度(銀行版)歷史
class Voltage228KBankExpectedHistoryList(generics.ListCreateAPIView):
    queryset = Voltage228KBankExpectedHistory.objects.all()
    serializer_class = Voltage228KBankExpectedHistorySerializer

class Voltage228KBankExpectedHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Voltage228KBankExpectedHistory.objects.all()
    serializer_class = Voltage228KBankExpectedHistorySerializer
#endregion

#region 計算周工程進度
class GetVoltage228KProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            print(f"Parameters: loop_id={loop_id}, currentPage={currentPage}, itemsPerPage={itemsPerPage}, project_type={project_type}")
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            print(f"Found {cases.count()} cases for loop_id {loop_id} {project_type}")

            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for case in cases:
                voltage228ks = ProjectVoltage228K.objects.filter(case_id=case.case_id)
                
                for voltage228k in voltage228ks:
                    progress_records = progress_model.objects.filter(voltage228k_id=voltage228k.voltage228k_id).order_by('-voltage228k_week_id')
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            voltage228k_id=voltage228k.voltage228k_id, 
                            voltage228k_week_id=progress_record.voltage228k_week_id,
                        ).first()
                        if expected_record:
                            print(f"expected_record.voltage228k_week_id: {expected_record.voltage228k_week_id.week_id}")
                            week_data = Voltage228KWeek.objects.filter(week_id=expected_record.voltage228k_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                date_ranges_with_data[date_range].append({
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": progress_record.progress_percentage,
                                    "expected": expected_record.progress_percentage
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
                            "voltage228k_name": item["voltage228k_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"]
                        })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
                    formatted_results.append({
                        "voltage228k_name": item["voltage228k_name"],
                        "date_range": latest_date_range,
                        "actual": item["actual"],
                        "expected": item["expected"]
                    })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "voltage228k_name": item["voltage228k_name"],
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
class GetVoltage228KAllQuarterProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            print(f"Parameters: loop_id={loop_id}, currentPage={currentPage}, itemsPerPage={itemsPerPage}, project_type={project_type}")
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            print(f"Found {cases.count()} cases for loop_id {loop_id} {project_type}")

            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for case in cases:
                voltage228ks = ProjectVoltage228K.objects.filter(case_id=case.case_id)
                for voltage228k in voltage228ks:
                    # 找到每一個季度的最後一周
                    all_years = Voltage228KWeek.objects.values_list('year', flat=True).distinct()
                    for year in all_years:
                        for quarter in range(1, 5):
                            last_week_of_quarter = Voltage228KWeek.objects.filter(
                                year=year, 
                                quarter=quarter
                            ).aggregate(Max('week'))['week__max']

                            if last_week_of_quarter:
                                last_week = Voltage228KWeek.objects.get(
                                    year=year, 
                                    quarter=quarter, 
                                    week=last_week_of_quarter
                                )

                                progress_records = progress_model.objects.filter(
                                    voltage228k_id=voltage228k.voltage228k_id, 
                                    voltage228k_week_id=last_week.week_id
                                )
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        voltage228k_id=voltage228k.voltage228k_id, 
                                        voltage228k_week_id=progress_record.voltage228k_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage
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
                            "voltage228k_name": item["voltage228k_name"],
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
                        "voltage228k_name": item["voltage228k_name"],
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
                            "voltage228k_name": item["voltage228k_name"],
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
class GetVoltage228KQuarterProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            print(f"Parameters: loop_id={loop_id}, currentPage={currentPage}, itemsPerPage={itemsPerPage}, project_type={project_type}")
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            print(f"Found {cases.count()} cases for loop_id {loop_id} {project_type}")

            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            current_year = datetime.datetime.now().year
            for case in cases:
                voltage228ks = ProjectVoltage228K.objects.filter(case_id=case.case_id)
                for voltage228k in voltage228ks:
                    # 對於每個Voltage228K，找到當年度當季的最後一週
                    for quarter in range(1, 5):
                        last_week_of_quarter = Voltage228KWeek.objects.filter(
                            year=current_year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = Voltage228KWeek.objects.get(
                                year=current_year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = progress_model.objects.filter(
                                voltage228k_id=voltage228k.voltage228k_id, 
                                voltage228k_week_id=last_week.week_id
                            )
                            for progress_record in progress_records:
                                expected_record = expected_model.objects.filter(
                                    voltage228k_id=voltage228k.voltage228k_id, 
                                    voltage228k_week_id=progress_record.voltage228k_week_id
                                ).first()
                                if expected_record:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": voltage228k.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage
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
                            "voltage228k_name": item["voltage228k_name"],
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
                        "voltage228k_name": item["voltage228k_name"],
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
                            "voltage228k_name": item["voltage228k_name"],
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

    # Ensure each color component is not too bright (limit to 127/0x7F)
    r = int(hash_hex[0:2], 16) % 128
    g = int(hash_hex[2:4], 16) % 128
    b = int(hash_hex[4:6], 16) % 128
    
    color = f'#{r:02x}{g:02x}{b:02x}'
    return color

#region 計算季工程進度報表
class GetVoltage228KQuarterChartProgress(APIView):
    def get(self, request, loop_id, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            current_year = datetime.datetime.now().year
            labels = [f"Q{quarter}" for quarter in range(1, 5)]

            datasets = []

            for case in cases:
                voltage228ks = ProjectVoltage228K.objects.filter(case_id=case.case_id)
                for voltage228k in voltage228ks:
                    actual_data = []
                    expected_data = []
                    for quarter in range(1, 5):
                        last_week_of_quarter = Voltage228KWeek.objects.filter(
                            year=current_year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = Voltage228KWeek.objects.get(
                                year=current_year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_record = progress_model.objects.filter(
                                voltage228k_id=voltage228k.voltage228k_id, 
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            expected_record = expected_model.objects.filter(
                                voltage228k_id=voltage228k.voltage228k_id, 
                                voltage228k_week_id=last_week.week_id
                            ).first() if progress_record else None

                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                            actual_data.append(actual_percentage)
                            expected_data.append(expected_percentage)

                    base_color = get_color_from_name(voltage228k.voltage228k_name)

                    datasets.append({
                        "label": f"{voltage228k.voltage228k_name} 實際",
                        "data": actual_data,
                        "backgroundColor": base_color,
                        "borderColor": base_color
                    })
                    datasets.append({
                        "label": f"{voltage228k.voltage228k_name} 預計",
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