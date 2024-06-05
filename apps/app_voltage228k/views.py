import datetime
from rest_framework import generics
from .models import Voltage228KBankExpectedHistory, Voltage228KBankHistory, Voltage228KBankProgress, Voltage228KBankProgressExpected, ProjectVoltage228K, ProjectVoltage228KExpectedProgress, ProjectVoltage228KHistory, ProjectVoltage228KProgress, Voltage228KWeek
from .serializers import Voltage228KBankExpectedHistorySerializer, Voltage228KBankHistorySerializer, Voltage228KBankProgressExpectedSerializer, Voltage228KBankProgressSerializer, ProjectVoltage228KExpectedProgressSerializer, ProjectVoltage228KHistorySerializer, ProjectVoltage228KProgressSerializer, ProjectVoltage228KSerializer, Voltage228KWeekSerializer
from rest_framework.views import APIView
from apps.app_project.models import ProjectCase, ProjectLoop
from rest_framework.response import Response
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Max
import hashlib
from django.db.models.functions import Concat
from django.db.models import Value as V
from django.db.models import CharField

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



#region 計算所有周土木工程進度
class GetCivilProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for voltage228k in voltage228ks:
                progress_records = progress_model.objects.filter(voltage228k_id=voltage228k.voltage228k_id).order_by('-voltage228k_week_id')
                if progress_records.exists():
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            voltage228k_id=voltage228k.voltage228k_id, 
                            voltage228k_week_id=progress_record.voltage228k_week_id
                        ).first()
                        if expected_record:
                            week_data = Voltage228KWeek.objects.filter(week_id=expected_record.voltage228k_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    date_ranges_with_data[date_range].append({
                                        "loop_name": voltage228k.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": voltage228k.construction_status,
                                        "actual_lag_status": progress_record.lag_status,
                                        "expected_lag_status": expected_record.lag_status,
                                    })
                                else:
                                    date_ranges_with_data[date_range].append({
                                        "loop_name": voltage228k.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": voltage228k.construction_status,
                                    })
                else:
                    today = datetime.datetime.now().strftime("%Y-%m-%d")
                    week_data = Voltage228KWeek.objects.filter(
                        end_date__lte=today
                    ).last()
                    if week_data:
                        date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                        if project_type == "bank":
                            date_ranges_with_data[date_range].append({
                                "loop_name": voltage228k.voltage228k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": voltage228k.construction_status,
                                "actual_lag_status": 0,
                                "expected_lag_status": 0,
                            })
                        else:
                            date_ranges_with_data[date_range].append({
                                "loop_name": voltage228k.voltage228k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": voltage228k.construction_status,
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
        
#region 計算所有周纜線工程進度
class GetCableProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for voltage228k in voltage228ks:
                progress_records = progress_model.objects.filter(voltage228k_id=voltage228k.voltage228k_id).order_by('-voltage228k_week_id')
                if progress_records.exists():
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            voltage228k_id=voltage228k.voltage228k_id, 
                            voltage228k_week_id=progress_record.voltage228k_week_id
                        ).first()
                        if expected_record:
                            week_data = Voltage228KWeek.objects.filter(week_id=expected_record.voltage228k_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    date_ranges_with_data[date_range].append({
                                        "loop_name": voltage228k.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": voltage228k.construction_status,
                                        "actual_lag_status": progress_record.lag_status,
                                        "expected_lag_status": expected_record.lag_status,
                                    })
                                else:
                                    date_ranges_with_data[date_range].append({
                                        "loop_name": voltage228k.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": voltage228k.construction_status,
                                    })
                else:
                    today = datetime.datetime.now().strftime("%Y-%m-%d")
                    week_data = Voltage228KWeek.objects.filter(
                        end_date__lte=today
                    ).last()
                    if week_data:
                        date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                        if project_type == "bank":
                            date_ranges_with_data[date_range].append({
                                "loop_name": voltage228k.voltage228k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": voltage228k.construction_status,
                                "actual_lag_status": 0,
                                "expected_lag_status": 0,
                            })
                        else:
                            date_ranges_with_data[date_range].append({
                                "loop_name": voltage228k.voltage228k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": voltage228k.construction_status,
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

#region 計算所有季土木工程進度
class GetCivilAllQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

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
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        voltage228k_id=voltage228k.voltage228k_id, 
                                        voltage228k_week_id=progress_record.voltage228k_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        if project_type == "bank":
                                            date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "voltage228k_name": voltage228k.voltage228k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": voltage228k.construction_status,
                                                "actual_lag_status": progress_record.lag_status,
                                                "expected_lag_status": expected_record.lag_status,
                                            })
                                        else:
                                            date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "voltage228k_name": voltage228k.voltage228k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": voltage228k.construction_status,
                                            })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": voltage228k.voltage228k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": voltage228k.construction_status,
                                        "actual_lag_status": 0,
                                        "expected_lag_status": 0,
                                    })
                                else:
                                    date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": voltage228k.voltage228k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": voltage228k.construction_status,
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
                                "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
                            "loop_name": item["voltage228k_name"],
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
                            "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
        
#region 計算所有季纜線工程進度
class GetCableAllQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

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
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        voltage228k_id=voltage228k.voltage228k_id, 
                                        voltage228k_week_id=progress_record.voltage228k_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        if project_type == "bank":
                                            date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "voltage228k_name": voltage228k.voltage228k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": voltage228k.construction_status,
                                                "actual_lag_status": progress_record.lag_status,
                                                "expected_lag_status": expected_record.lag_status,
                                            })
                                        else:
                                            date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "voltage228k_name": voltage228k.voltage228k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": voltage228k.construction_status,
                                            })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": voltage228k.voltage228k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": voltage228k.construction_status,
                                        "actual_lag_status": 0,
                                        "expected_lag_status": 0,
                                    })
                                else:
                                    date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": voltage228k.voltage228k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": voltage228k.construction_status,
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
                                "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
                            "loop_name": item["voltage228k_name"],
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
                            "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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

#region 計算即時土木工程進度
class GetCivilQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:
            current_year = datetime.datetime.now().year
            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for voltage228k in voltage228ks:
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
                        if progress_records.exists():
                            for progress_record in progress_records:
                                expected_record = expected_model.objects.filter(
                                    voltage228k_id=voltage228k.voltage228k_id, 
                                    voltage228k_week_id=progress_record.voltage228k_week_id
                                ).first()
                                if expected_record:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage228k.construction_status,
                                            "actual_lag_status": progress_record.lag_status,
                                            "expected_lag_status": expected_record.lag_status,
                                        })
                                    else:
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage228k.construction_status,
                                        })
                        else:
                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                            if project_type == "bank":
                                date_ranges_with_data[date_range].append({
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage228k.construction_status,
                                    "actual_lag_status": 0,
                                    "expected_lag_status": 0,
                                })
                            else:
                                date_ranges_with_data[date_range].append({
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage228k.construction_status,
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
                                "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
                            "loop_name": item["voltage228k_name"],
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
                            "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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

#region 計算即時纜線工程進度
class GetCableQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:
            current_year = datetime.datetime.now().year
            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for voltage228k in voltage228ks:
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
                        if progress_records.exists():
                            for progress_record in progress_records:
                                expected_record = expected_model.objects.filter(
                                    voltage228k_id=voltage228k.voltage228k_id, 
                                    voltage228k_week_id=progress_record.voltage228k_week_id
                                ).first()
                                if expected_record:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage228k.construction_status,
                                            "actual_lag_status": progress_record.lag_status,
                                            "expected_lag_status": expected_record.lag_status,
                                        })
                                    else:
                                        date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage228k.construction_status,
                                        })
                        else:
                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                            if project_type == "bank":
                                date_ranges_with_data[date_range].append({
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage228k.construction_status,
                                    "actual_lag_status": 0,
                                    "expected_lag_status": 0,
                                })
                            else:
                                date_ranges_with_data[date_range].append({
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage228k.construction_status,
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
                                "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
                            "loop_name": item["voltage228k_name"],
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
                            "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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
                                "loop_name": item["voltage228k_name"],
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

#region 計算周工程進度
class GetVoltage228KProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:
            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            civil_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)
            cable_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            civil_date_ranges_with_data = defaultdict(list)
            cable_date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for civil_data in civil_datas:
                progress_records = progress_model.objects.filter(voltage228k_id=civil_data.voltage228k_id).order_by('-voltage228k_week_id')
                if progress_records.exists():
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            voltage228k_id=civil_data.voltage228k_id, 
                            voltage228k_week_id=progress_record.voltage228k_week_id
                        ).first()
                        if expected_record:
                            week_data = Voltage228KWeek.objects.filter(week_id=expected_record.voltage228k_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    civil_date_ranges_with_data[date_range].append({
                                        "loop_name": civil_data.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": civil_data.construction_status,
                                        "actual_lag_status": progress_record.lag_status,
                                        "expected_lag_status": expected_record.lag_status,
                                    })
                                else:
                                    civil_date_ranges_with_data[date_range].append({
                                        "loop_name": civil_data.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": civil_data.construction_status,
                                    })
                else:
                    today = datetime.datetime.now().strftime("%Y-%m-%d")
                    week_data = Voltage228KWeek.objects.filter(
                        end_date__lte=today
                    ).last()
                    if week_data:
                        date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                        if project_type == "bank":
                            civil_date_ranges_with_data[date_range].append({
                                "loop_name": civil_data.voltage228k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": civil_data.construction_status,
                                "actual_lag_status": 0,
                                "expected_lag_status": 0,
                            })
                        else:
                            civil_date_ranges_with_data[date_range].append({
                                "loop_name": civil_data.voltage228k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": civil_data.construction_status,
                            })
                
            for cable_data in cable_datas:
                progress_records = progress_model.objects.filter(voltage228k_id=cable_data.voltage228k_id).order_by('-voltage228k_week_id')
                if progress_records.exists():
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            voltage228k_id=cable_data.voltage228k_id, 
                            voltage228k_week_id=progress_record.voltage228k_week_id
                        ).first()
                        if expected_record:
                            week_data = Voltage228KWeek.objects.filter(week_id=expected_record.voltage228k_week_id.week_id).first()
                            if week_data:
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    cable_date_ranges_with_data[date_range].append({
                                        "loop_name": cable_data.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": cable_data.construction_status,
                                        "actual_lag_status": progress_record.lag_status,
                                        "expected_lag_status": expected_record.lag_status,
                                    })
                                else:
                                    cable_date_ranges_with_data[date_range].append({
                                        "loop_name": cable_data.voltage228k_name,
                                        "actual": progress_record.progress_percentage,
                                        "expected": expected_record.progress_percentage,
                                        "construction_status": cable_data.construction_status,
                                    })
                else:
                    today = datetime.datetime.now().strftime("%Y-%m-%d")
                    week_data = Voltage228KWeek.objects.filter(
                        end_date__lte=today
                    ).last()
                    if week_data:
                        date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                        if project_type == "bank":
                            cable_date_ranges_with_data[date_range].append({
                                "loop_name": cable_data.voltage228k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": cable_data.construction_status,
                                "actual_lag_status": 0,
                                "expected_lag_status": 0,
                            })
                        else:
                            cable_date_ranges_with_data[date_range].append({
                                "loop_name": cable_data.voltage228k_name,
                                "actual": 0,
                                "expected": 0,
                                "construction_status": cable_data.construction_status,
                            })

            date_ranges_with_data = defaultdict(list)

            for date_range in set(civil_date_ranges_with_data.keys()).union(cable_date_ranges_with_data.keys()):
                civil_entries = {entry['loop_name']: entry for entry in civil_date_ranges_with_data.get(date_range, [])}
                cable_entries = {entry['loop_name']: entry for entry in cable_date_ranges_with_data.get(date_range, [])}

                all_loop_names = set(civil_entries.keys()).union(cable_entries.keys())
                for loop_name in all_loop_names:
                    civil_actual = civil_entries.get(loop_name, {}).get('actual', 0)
                    civil_expected = civil_entries.get(loop_name, {}).get('expected', 0)
                    cable_actual = cable_entries.get(loop_name, {}).get('actual', 0)
                    cable_expected = cable_entries.get(loop_name, {}).get('expected', 0)

                    combined_actual = (civil_actual + cable_actual) / 2
                    combined_expected = (civil_expected + cable_expected) / 2

                    construction_status = civil_entries.get(loop_name, {}).get('construction_status', 0) or cable_entries.get(loop_name, {}).get('construction_status', 0)
                    if project_type == "bank":
                        actual_lag_status = civil_entries.get(loop_name, {}).get('actual_lag_status', 0) or cable_entries.get(loop_name, {}).get('actual_lag_status', 0)
                        expected_lag_status = civil_entries.get(loop_name, {}).get('expected_lag_status', 0) or cable_entries.get(loop_name, {}).get('expected_lag_status', 0)
                        date_ranges_with_data[date_range].append({
                            "loop_name": loop_name,
                            "actual": combined_actual,
                            "expected": combined_expected,
                            "construction_status": construction_status,
                            "actual_lag_status": actual_lag_status,
                            "expected_lag_status": expected_lag_status
                        })
                    else:
                        date_ranges_with_data[date_range].append({
                            "loop_name": loop_name,
                            "actual": combined_actual,
                            "expected": combined_expected,
                            "construction_status": construction_status,
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
        
#region 計算所有季工程進度
class GetVoltage228KAllQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            civil_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)
            cable_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            civil_date_ranges_with_data = defaultdict(list)
            cable_date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for civil_data in civil_datas:
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
                                voltage228k_id=civil_data.voltage228k_id, 
                                voltage228k_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        voltage228k_id=civil_data.voltage228k_id, 
                                        voltage228k_week_id=progress_record.voltage228k_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        if project_type == "bank":
                                            civil_date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "voltage228k_name": civil_data.voltage228k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": civil_data.construction_status,
                                                "actual_lag_status": progress_record.lag_status,
                                                "expected_lag_status": expected_record.lag_status,
                                            })
                                        else:
                                            civil_date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "voltage228k_name": civil_data.voltage228k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": civil_data.construction_status,
                                            })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    civil_date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": civil_data.voltage228k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": civil_data.construction_status,
                                        "actual_lag_status": 0,
                                        "expected_lag_status": 0,
                                    })
                                else:
                                    civil_date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": civil_data.voltage228k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": civil_data.construction_status,
                                    })
                                
            for voltage228k in cable_datas:
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
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        voltage228k_id=voltage228k.voltage228k_id, 
                                        voltage228k_week_id=progress_record.voltage228k_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        if project_type == "bank":
                                            cable_date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "voltage228k_name": voltage228k.voltage228k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": voltage228k.construction_status,
                                                "actual_lag_status": progress_record.lag_status,
                                                "expected_lag_status": expected_record.lag_status,
                                            })
                                        else:    
                                            cable_date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "voltage228k_name": voltage228k.voltage228k_name,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage,
                                                "construction_status": voltage228k.construction_status,
                                            })
                            else:
                                date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                if project_type == "bank":
                                    cable_date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": voltage228k.voltage228k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": voltage228k.construction_status,
                                        "actual_lag_status": 0,
                                        "expected_lag_status": 0,
                                    })
                                else:
                                    cable_date_ranges_with_data[date_range].append({
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                        "voltage228k_name": voltage228k.voltage228k_name,
                                        "actual": 0,
                                        "expected": 0,
                                        "construction_status": voltage228k.construction_status,
                                    })

            date_ranges_with_data = defaultdict(list)

            for date_range in set(civil_date_ranges_with_data.keys()).union(cable_date_ranges_with_data.keys()):
                civil_entries = {entry['voltage228k_name']: entry for entry in civil_date_ranges_with_data.get(date_range, [])}
                cable_entries = {entry['voltage228k_name']: entry for entry in cable_date_ranges_with_data.get(date_range, [])}

                all_loop_names = set(civil_entries.keys()).union(cable_entries.keys())
                for loop_name in all_loop_names:
                    civil_actual = civil_entries.get(loop_name, {}).get('actual', 0)
                    civil_expected = civil_entries.get(loop_name, {}).get('expected', 0)
                    cable_actual = cable_entries.get(loop_name, {}).get('actual', 0)
                    cable_expected = cable_entries.get(loop_name, {}).get('expected', 0)

                    combined_actual = (civil_actual + cable_actual) / 2
                    combined_expected = (civil_expected + cable_expected) / 2

                    construction_status = civil_entries.get(loop_name, {}).get('construction_status', 0) or cable_entries.get(loop_name, {}).get('construction_status', 0)

                    year = civil_entries.get(loop_name, {}).get('year', 0) or cable_entries.get(loop_name, {}).get('year', 0)
                    quarter = civil_entries.get(loop_name, {}).get('quarter', 0) or cable_entries.get(loop_name, {}).get('quarter', 0)
                    week = civil_entries.get(loop_name, {}).get('week', 0) or cable_entries.get(loop_name, {}).get('week', 0)

                    if project_type == "bank":
                        actual_lag_status = civil_entries.get(loop_name, {}).get('actual_lag_status', 0) or cable_entries.get(loop_name, {}).get('actual_lag_status', 0)
                        expected_lag_status = civil_entries.get(loop_name, {}).get('expected_lag_status', 0) or cable_entries.get(loop_name, {}).get('expected_lag_status', 0)
                        date_ranges_with_data[date_range].append({
                            "loop_name": loop_name,
                            "actual": combined_actual,
                            "expected": combined_expected,
                            "construction_status": construction_status,
                            "actual_lag_status": actual_lag_status,
                            "expected_lag_status": expected_lag_status,
                            "year": year,
                            "quarter": quarter,
                            "week": week,
                        })
                    else:
                        date_ranges_with_data[date_range].append({
                            "loop_name": loop_name,
                            "actual": combined_actual,
                            "expected": combined_expected,
                            "construction_status": construction_status,
                            "year": year,
                            "quarter": quarter,
                            "week": week,
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
        
#region 計算季工程進度
class GetVoltage228KQuarterProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:
            current_year = datetime.datetime.now().year
            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            civil_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)
            cable_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            civil_date_ranges_with_data = defaultdict(list)
            cable_date_ranges_with_data = defaultdict(list)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)
            
            for voltage228k in civil_datas:
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
                        if progress_records.exists():
                            for progress_record in progress_records:
                                expected_record = expected_model.objects.filter(
                                    voltage228k_id=voltage228k.voltage228k_id, 
                                    voltage228k_week_id=progress_record.voltage228k_week_id
                                ).first()
                                if expected_record:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        civil_date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage228k.construction_status,
                                            "actual_lag_status": progress_record.lag_status,
                                            "expected_lag_status": expected_record.lag_status,
                                        })
                                    else:    
                                        civil_date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage228k.construction_status,
                                        })
                        else:
                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                            if project_type == "bank":
                                civil_date_ranges_with_data[date_range].append({
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage228k.construction_status,
                                    "actual_lag_status": 0,
                                    "expected_lag_status": 0,
                                })
                            else:    
                                civil_date_ranges_with_data[date_range].append({
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage228k.construction_status,
                                })

            for voltage228k in cable_datas:
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
                        if progress_records.exists():
                            for progress_record in progress_records:
                                expected_record = expected_model.objects.filter(
                                    voltage228k_id=voltage228k.voltage228k_id, 
                                    voltage228k_week_id=progress_record.voltage228k_week_id
                                ).first()
                                if expected_record:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        cable_date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage228k.construction_status,
                                            "actual_lag_status": progress_record.lag_status,
                                            "expected_lag_status": expected_record.lag_status,
                                        })
                                    else:    
                                        cable_date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "voltage228k_name": voltage228k.voltage228k_name,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "construction_status": voltage228k.construction_status,
                                        })
                        else:
                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                            if project_type == "bank":
                                cable_date_ranges_with_data[date_range].append({
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage228k.construction_status,
                                    "actual_lag_status": 0,
                                    "expected_lag_status": 0,
                                })
                            else:
                                cable_date_ranges_with_data[date_range].append({
                                    "year": last_week.year,
                                    "quarter": last_week.quarter,
                                    "week": last_week.week,
                                    "voltage228k_name": voltage228k.voltage228k_name,
                                    "actual": 0,
                                    "expected": 0,
                                    "construction_status": voltage228k.construction_status,
                                })

            
            date_ranges_with_data = defaultdict(list)

            for date_range in set(civil_date_ranges_with_data.keys()).union(cable_date_ranges_with_data.keys()):
                civil_entries = {entry['voltage228k_name']: entry for entry in civil_date_ranges_with_data.get(date_range, [])}
                cable_entries = {entry['voltage228k_name']: entry for entry in cable_date_ranges_with_data.get(date_range, [])}

                all_loop_names = set(civil_entries.keys()).union(cable_entries.keys())
                for loop_name in all_loop_names:
                    civil_actual = civil_entries.get(loop_name, {}).get('actual', 0)
                    civil_expected = civil_entries.get(loop_name, {}).get('expected', 0)
                    cable_actual = cable_entries.get(loop_name, {}).get('actual', 0)
                    cable_expected = cable_entries.get(loop_name, {}).get('expected', 0)

                    combined_actual = (civil_actual + cable_actual) / 2
                    combined_expected = (civil_expected + cable_expected) / 2

                    construction_status = civil_entries.get(loop_name, {}).get('construction_status', 0) or cable_entries.get(loop_name, {}).get('construction_status', 0)

                    year = civil_entries.get(loop_name, {}).get('year', 0) or cable_entries.get(loop_name, {}).get('year', 0)
                    quarter = civil_entries.get(loop_name, {}).get('quarter', 0) or cable_entries.get(loop_name, {}).get('quarter', 0)
                    week = civil_entries.get(loop_name, {}).get('week', 0) or cable_entries.get(loop_name, {}).get('week', 0)
                    
                    if project_type == "bank":
                        actual_lag_status = civil_entries.get(loop_name, {}).get('actual_lag_status', 0) or cable_entries.get(loop_name, {}).get('actual_lag_status', 0)
                        expected_lag_status = civil_entries.get(loop_name, {}).get('expected_lag_status', 0) or cable_entries.get(loop_name, {}).get('expected_lag_status', 0)
                        date_ranges_with_data[date_range].append({
                            "loop_name": loop_name,
                            "actual": combined_actual,
                            "expected": combined_expected,
                            "construction_status": construction_status,
                            "actual_lag_status": actual_lag_status,
                            "expected_lag_status": expected_lag_status,
                            "year": year,
                            "quarter": quarter,
                            "week": week,
                        })
                    else:
                        date_ranges_with_data[date_range].append({
                            "loop_name": loop_name,
                            "actual": combined_actual,
                            "expected": combined_expected,
                            "construction_status": construction_status,
                            "year": year,
                            "quarter": quarter,
                            "week": week,
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

#region 計算季土木工程進度報表
class GetCivilQuarterChartProgress(APIView):
    
    def get(self, request, project_id, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)

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
        
#region 計算所有季土木工程進度報表
class GetCivilAllQuarterChartProgress(APIView):
    
    def get(self, request, project_id, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            datasets = []
            all_years = Voltage228KWeek.objects.values_list('year', flat=True).order_by('year').distinct()

            labels = [f"{year} Q{quarter}" for year in all_years for quarter in range(1, 5)]

            for voltage228k in voltage228ks:
                actual_data = []
                expected_data = []
                for year in all_years:
                    quarters_with_data = Voltage228KWeek.objects.filter(year=year).values_list('quarter', flat=True).distinct()

                    for quarter in quarters_with_data:
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
        
#region 計算所有周土木工程進度報表
class GetCivilWeekChartProgress(APIView):
    
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            # 獲取所有周，並由新到舊排序
            all_weeks = Voltage228KWeek.objects.annotate(
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

            for voltage228k in voltage228ks:
                actual_data = []
                expected_data = []
                for week in sorted_weeks:
                    progress_record = progress_model.objects.filter(
                        voltage228k_id=voltage228k.voltage228k_id,
                        voltage228k_week_id=week.week_id
                    ).first()

                    expected_record = expected_model.objects.filter(
                        voltage228k_id=voltage228k.voltage228k_id,
                        voltage228k_week_id=week.week_id
                    ).first()

                    actual_percentage = progress_record.progress_percentage * 100 if progress_record else 0
                    expected_percentage = expected_record.progress_percentage * 100 if expected_record else 0

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

#region 計算季纜線工程進度報表
class GetCableQuarterChartProgress(APIView):
    
    def get(self, request, project_id, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

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
        
#region 計算所有季纜線工程進度報表
class GetCableAllQuarterChartProgress(APIView):
    
    def get(self, request, project_id, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            datasets = []
            all_years = Voltage228KWeek.objects.values_list('year', flat=True).order_by('year').distinct()

            labels = [f"{year} Q{quarter}" for year in all_years for quarter in range(1, 5)]

            for voltage228k in voltage228ks:
                actual_data = []
                expected_data = []
                for year in all_years:
                    quarters_with_data = Voltage228KWeek.objects.filter(year=year).values_list('quarter', flat=True).distinct()

                    for quarter in quarters_with_data:
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
        
#region 計算所有周纜線工程進度報表
class GetCableWeekChartProgress(APIView):
    
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            voltage228ks = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            # 獲取所有周，並由新到舊排序
            all_weeks = Voltage228KWeek.objects.annotate(
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

            for voltage228k in voltage228ks:
                actual_data = []
                expected_data = []
                for week in sorted_weeks:
                    progress_record = progress_model.objects.filter(
                        voltage228k_id=voltage228k.voltage228k_id,
                        voltage228k_week_id=week.week_id
                    ).first()

                    expected_record = expected_model.objects.filter(
                        voltage228k_id=voltage228k.voltage228k_id,
                        voltage228k_week_id=week.week_id
                    ).first()

                    actual_percentage = progress_record.progress_percentage * 100 if progress_record else 0
                    expected_percentage = expected_record.progress_percentage * 100 if expected_record else 0

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

#region 計算所有周工程進度報表
class GetVoltage228KWeekChartProgress(APIView):
    def get(self, request, project_id, currentPage, itemsPerPage, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            civil_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)
            cable_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            # 獲取所有周，並由新到舊排序
            all_weeks = Voltage228KWeek.objects.annotate(
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

            for civil_data in civil_datas:
                for cable_data in cable_datas:
                    actual_data = []
                    expected_data = []
                    for week in sorted_weeks:

                        cable_progress_record = progress_model.objects.filter(
                            voltage228k_id=cable_data,
                            voltage228k_week_id=week.week_id
                        ).first()

                        cable_expected_record = expected_model.objects.filter(
                            voltage228k_id=cable_data,
                            voltage228k_week_id=week.week_id
                        ).first()

                        civil_progress_record = progress_model.objects.filter(
                            voltage228k_id=civil_data,
                            voltage228k_week_id=week.week_id
                        ).first()

                        civil_expected_record = expected_model.objects.filter(
                            voltage228k_id=civil_data,
                            voltage228k_week_id=week.week_id
                        ).first()

                        actual_percentage = (cable_progress_record.progress_percentage if cable_progress_record else 0 ) * 50 + (civil_progress_record.progress_percentage if civil_progress_record else 0) * 50
                        expected_percentage = (cable_expected_record.progress_percentage if cable_expected_record else 0 ) * 50 + (civil_expected_record.progress_percentage if civil_expected_record else 0) * 50

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                base_color = get_color_from_name(civil_data.voltage228k_name)

                datasets.append({
                    "label": f"{civil_data.voltage228k_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{civil_data.voltage228k_name} 預計",
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
class GetVoltage228KAllQuarterChartProgress(APIView):
    def get(self, request, project_id, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            civil_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)
            cable_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

            if project_type == "engineering":
                progress_model = ProjectVoltage228KProgress
                expected_model = ProjectVoltage228KExpectedProgress
            elif project_type == "bank":
                progress_model = Voltage228KBankProgress
                expected_model = Voltage228KBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            datasets = []
            all_years = Voltage228KWeek.objects.values_list('year', flat=True).order_by('year').distinct()

            labels = [f"{year} Q{quarter}" for year in all_years for quarter in range(1, 5)]

            for civil_data in civil_datas:
                for cable_data in cable_datas:
                    actual_data = []
                    expected_data = []
                    for year in all_years:
                        quarters_with_data = Voltage228KWeek.objects.filter(year=year).values_list('quarter', flat=True).distinct()

                        for quarter in quarters_with_data:
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

                            cable_progress_record = progress_model.objects.filter(
                                voltage228k_id=cable_data,
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            cable_expected_record = expected_model.objects.filter(
                                voltage228k_id=cable_data,
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            civil_progress_record = progress_model.objects.filter(
                                voltage228k_id=civil_data,
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            civil_expected_record = expected_model.objects.filter(
                                voltage228k_id=civil_data,
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            actual_percentage = (cable_progress_record.progress_percentage if cable_progress_record else 0 ) * 50 + (civil_progress_record.progress_percentage if civil_progress_record else 0) * 50
                            expected_percentage = (cable_expected_record.progress_percentage if cable_expected_record else 0 ) * 50 + (civil_expected_record.progress_percentage if civil_expected_record else 0) * 50

                            actual_data.append(actual_percentage)
                            expected_data.append(expected_percentage)

                base_color = get_color_from_name(civil_data.voltage228k_name)

                datasets.append({
                    "label": f"{civil_data.voltage228k_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{civil_data.voltage228k_name} 預計",
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
        
#region 計算即時季工程進度報表
class GetVoltage228KQuarterChartProgress(APIView):
    def get(self, request, project_id, project_type):
        try:

            loops = ProjectLoop.objects.filter(project_id=project_id)
            loop_ids = loops.values_list('loop_id', flat=True)

            civil_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=1)
            cable_datas = ProjectVoltage228K.objects.filter(loop_id__in=loop_ids, engineer=2)

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

            for civil_data in civil_datas:
                for cable_data in cable_datas:
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

                            cable_progress_record = progress_model.objects.filter(
                                voltage228k_id=cable_data,
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            cable_expected_record = expected_model.objects.filter(
                                voltage228k_id=cable_data,
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            civil_progress_record = progress_model.objects.filter(
                                voltage228k_id=civil_data,
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            civil_expected_record = expected_model.objects.filter(
                                voltage228k_id=civil_data,
                                voltage228k_week_id=last_week.week_id
                            ).first()

                            actual_percentage = (cable_progress_record.progress_percentage if cable_progress_record else 0 ) * 50 + (civil_progress_record.progress_percentage if civil_progress_record else 0) * 50
                            expected_percentage = (cable_expected_record.progress_percentage if cable_expected_record else 0 ) * 50 + (civil_expected_record.progress_percentage if civil_expected_record else 0) * 50

                            actual_data.append(actual_percentage)
                            expected_data.append(expected_percentage)


                base_color = get_color_from_name(civil_data.voltage228k_name)

                datasets.append({
                    "label": f"{civil_data.voltage228k_name} 實際",
                    "data": actual_data,
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{civil_data.voltage228k_name} 預計",
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
