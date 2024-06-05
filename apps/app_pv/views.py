import datetime
from rest_framework import generics
from apps.app_breeding.models import BreedingBankProgress, BreedingBankProgressExpected, BreedingWeek, ProjectBreeding, ProjectBreedingExpectedProgress, ProjectBreedingProgress
from .models import LogisticParameters, LogisticParametersHistory, MajorItemPercentage, MajorItemPercentageHistory, PVBankExpectedHistory, PVBankHistory, PVBankProgress, PVBankProgressExpected, ProjectPV, ProjectPVExpectedProgress, ProjectPVHistory, ProjectPVProgress, PvWeek, Series, SeriesHistory, SubItemPercentage, SubItemPercentageHistory
from .serializers import LogisticParametersHistorySerializer, LogisticParametersSerializer, MajorItemPercentageHistorySerializer, PVBankExpectedHistorySerializer, PVBankHistorySerializer, PVBankProgressExpectedSerializer, PVBankProgressSerializer, ProjectPVExpectedProgressSerializer, ProjectPVHistorySerializer, ProjectPVProgressSerializer, ProjectPVSerializer, PvWeekSerializer, SeriesSerializer, SeriesHistorySerializer, MajorItemPercentageSerializer, SubItemPercentageHistorySerializer, SubItemPercentageSerializer
from apps.app_project.models import ProjectCase
from rest_framework.views import APIView
from rest_framework.response import Response
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Max
import hashlib
from django.db.models.functions import Concat
from django.db.models import Value as V
from django.db.models import CharField

#region 工程價金系列
class SeriesList(generics.ListCreateAPIView):
    queryset = Series.objects.all()
    serializer_class = SeriesSerializer

class SeriesDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Series.objects.all()
    serializer_class = SeriesSerializer
# endregion

#region 工程價金系列歷史
class SeriesHistoryList(generics.ListCreateAPIView):
    queryset = SeriesHistory.objects.all()
    serializer_class = SeriesHistorySerializer

class SeriesHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = SeriesHistory.objects.all()
    serializer_class = SeriesHistorySerializer
#endregion
    
#region 大價金比例資料
class MajorItemPercentageList(generics.ListCreateAPIView):
    queryset = MajorItemPercentage.objects.all()
    serializer_class = MajorItemPercentageSerializer

class MajorItemPercentageDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = MajorItemPercentage.objects.all()
    serializer_class = MajorItemPercentageSerializer
#endregion

#region 大價金比例資料歷史
class MajorItemPercentageHistoryList(generics.ListCreateAPIView):
    queryset = MajorItemPercentageHistory.objects.all()
    serializer_class = MajorItemPercentageHistorySerializer

class MajorItemPercentageHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = MajorItemPercentageHistory.objects.all()
    serializer_class = MajorItemPercentageHistorySerializer
#endregion
    
#region 小價金比例資料
class SubItemPercentageList(generics.ListCreateAPIView):
    queryset = SubItemPercentage.objects.all()
    serializer_class = SubItemPercentageSerializer

class SubItemPercentageDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = SubItemPercentage.objects.all()
    serializer_class = SubItemPercentageSerializer
#endregion
    
#region 小價金比例資料歷史
class SubItemPercentageHistoryList(generics.ListCreateAPIView):
    queryset = SubItemPercentageHistory.objects.all()
    serializer_class = SubItemPercentageHistorySerializer

class SubItemPercentageHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = SubItemPercentageHistory.objects.all()
    serializer_class = SubItemPercentageHistorySerializer
#endregion
    
#region 邏輯斯蒂方程參數
class LogisticParametersList(generics.ListCreateAPIView):
    queryset = LogisticParameters.objects.all()
    serializer_class = LogisticParametersSerializer

class LogisticParametersDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = LogisticParameters.objects.all()
    serializer_class = LogisticParametersSerializer
#endregion
    
#region 邏輯斯蒂方程參數歷史
class LogisticParametersHistoryList(generics.ListCreateAPIView):
    queryset = LogisticParametersHistory.objects.all()
    serializer_class = LogisticParametersHistorySerializer

class LogisticParametersHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = LogisticParametersHistory.objects.all()
    serializer_class = LogisticParametersHistorySerializer
#endregion
    
#region 專案PV周
class PvWeekList(generics.ListCreateAPIView):
    queryset = PvWeek.objects.all()
    serializer_class = PvWeekSerializer

class PvWeekDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvWeek.objects.all()
    serializer_class = PvWeekSerializer
#endregion
    
#region 專案PV
class ProjectPVList(generics.ListCreateAPIView):
    queryset = ProjectPV.objects.all()
    serializer_class = ProjectPVSerializer

class ProjectPVDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectPV.objects.all()
    serializer_class = ProjectPVSerializer
#endregion
    
#region 專案PV歷史
class ProjectPVHistoryList(generics.ListCreateAPIView):
    queryset = ProjectPVHistory.objects.all()
    serializer_class = ProjectPVHistorySerializer

class ProjectPVHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectPVHistory.objects.all()
    serializer_class = ProjectPVHistorySerializer
#endregion
    
#region 專案PV實際進度(工程版)
class ProjectPVProgressList(generics.ListCreateAPIView):
    queryset = ProjectPVProgress.objects.all()
    serializer_class = ProjectPVProgressSerializer

class ProjectPVProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectPVProgress.objects.all()
    serializer_class = ProjectPVProgressSerializer
#endregion
    
#region 專案PV預期進度(工程版)
class ProjectPVExpectedProgressList(generics.ListCreateAPIView):
    queryset = ProjectPVExpectedProgress.objects.all()
    serializer_class = ProjectPVExpectedProgressSerializer

class ProjectPVExpectedProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProjectPVExpectedProgress.objects.all()
    serializer_class = ProjectPVExpectedProgressSerializer
#endregion
    
#region 專案PV實際進度(銀行版)
class PVBankProgressList(generics.ListCreateAPIView):
    queryset = PVBankProgress.objects.all()
    serializer_class = PVBankProgressSerializer

class PVBankProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PVBankProgress.objects.all()
    serializer_class = PVBankProgressSerializer
#endregion
    
#region 專案PV實際進度(銀行版)歷史
class PVBankHistoryList(generics.ListCreateAPIView):
    queryset = PVBankHistory.objects.all()
    serializer_class = PVBankHistorySerializer

class PVBankHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PVBankHistory.objects.all()
    serializer_class = PVBankHistorySerializer
#endregion
    
#region 專案PV預期進度(銀行版)
class PVBankProgressExpectedList(generics.ListCreateAPIView):
    queryset = PVBankProgressExpected.objects.all()
    serializer_class = PVBankProgressExpectedSerializer

class PVBankProgressExpectedDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PVBankProgressExpected.objects.all()
    serializer_class = PVBankProgressExpectedSerializer
#endregion
    
#region 專案PV預期進度(銀行版)歷史
class PVBankExpectedHistoryList(generics.ListCreateAPIView):
    queryset = PVBankExpectedHistory.objects.all()
    serializer_class = PVBankExpectedHistorySerializer

class PVBankExpectedHistoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PVBankExpectedHistory.objects.all()
    serializer_class = PVBankExpectedHistorySerializer
#endregion

#region 計算周工程進度
class GetPVProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectPVProgress
                expected_model = ProjectPVExpectedProgress
            elif project_type == "bank":
                progress_model = PVBankProgress
                expected_model = PVBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                
                for pv in pvs:
                    progress_records = progress_model.objects.filter(pv_id=pv.pv_id).order_by('-pv_week_id')
                    if progress_records.exists():
                        for progress_record in progress_records:
                            expected_record = expected_model.objects.filter(
                                pv_id=pv.pv_id, 
                                pv_week_id=progress_record.pv_week_id,
                            ).first()
                            if expected_record:
                                week_data = PvWeek.objects.filter(week_id=expected_record.pv_week_id.week_id).first()
                                if week_data:
                                    date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                    if project_type == "bank":
                                        date_ranges_with_data[date_range].append({
                                            "pv_name": pv.pv_name,
                                            "construction_status": pv.construction_status,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                            "actual_lag_status": progress_record.lag_status,
                                            "expected_lag_status": expected_record.lag_status,
                                        })
                                    else:
                                        date_ranges_with_data[date_range].append({
                                            "pv_name": pv.pv_name,
                                            "construction_status": pv.construction_status,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage,
                                        })
                    else:
                        today = datetime.datetime.now().strftime("%Y-%m-%d")
                        week_data = PvWeek.objects.filter(
                            end_date__lte=today
                        ).last()
                        if week_data:
                            date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                            if project_type == "bank":
                                date_ranges_with_data[date_range].append({
                                    "pv_name": pv.pv_name,
                                    "construction_status": pv.construction_status,
                                    "actual": 0,
                                    "expected": 0,
                                    "actual_lag_status": 0,
                                    "expected_lag_status": 0,
                                })
                            else:
                                date_ranges_with_data[date_range].append({
                                    "pv_name": pv.pv_name,
                                    "construction_status": pv.construction_status,
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
                                "vb_name": item["pv_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "vb_name": item["pv_name"],
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
                                "vb_name": item["pv_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "vb_name": item["pv_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"]
                            })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        if project_type == "bank":
                            formatted_results.append({
                                "vb_name": item["pv_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
                                "actual": item["actual"],
                                "expected": item["expected"],
                                "actual_lag_status": item["actual_lag_status"],
                                "expected_lag_status": item["expected_lag_status"],
                            })
                        else:
                            formatted_results.append({
                                "vb_name": item["pv_name"],
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
class GetPVAllQuarterProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectPVProgress
                expected_model = ProjectPVExpectedProgress
            elif project_type == "bank":
                progress_model = PVBankProgress
                expected_model = PVBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)
            
            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                for pv in pvs:
                    # 找到每一個季度的最後一周
                    all_years = PvWeek.objects.values_list('year', flat=True).distinct()
                    for year in all_years:
                        for quarter in range(1, 5):
                            last_week_of_quarter = PvWeek.objects.filter(
                                year=year, 
                                quarter=quarter
                            ).aggregate(Max('week'))['week__max']

                            if last_week_of_quarter:
                                last_week = PvWeek.objects.get(
                                    year=year, 
                                    quarter=quarter, 
                                    week=last_week_of_quarter
                                )

                                progress_records = progress_model.objects.filter(
                                    pv_id=pv.pv_id, 
                                    pv_week_id=last_week.week_id
                                )
                                if progress_records.exists():
                                    for progress_record in progress_records:
                                        expected_record = expected_model.objects.filter(
                                            pv_id=pv.pv_id, 
                                            pv_week_id=progress_record.pv_week_id
                                        ).first()
                                        if expected_record:
                                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                            if project_type == "bank":
                                                date_ranges_with_data[date_range].append({
                                                    "year": last_week.year,
                                                    "quarter": last_week.quarter,
                                                    "week": last_week.week,
                                                    "pv_name": pv.pv_name,
                                                    "construction_status": pv.construction_status,
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
                                                    "pv_name": pv.pv_name,
                                                    "construction_status": pv.construction_status,
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
                                            "pv_name": pv.pv_name,
                                            "construction_status": pv.construction_status,
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
                                            "pv_name": pv.pv_name,
                                            "construction_status": pv.construction_status,
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
                                "vb_name": item["pv_name"],
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
                                "vb_name": item["pv_name"],
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
                            "vb_name": item["pv_name"],
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
                            "vb_name": item["pv_name"],
                            "construction_status": item["construction_status"],
                            "date_range": date_range,
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
                                "vb_name": item["pv_name"],
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
                                "vb_name": item["pv_name"],
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
class GetPVQuarterProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            date_ranges_with_data = defaultdict(list)
            
            # 根據 project_type 選擇不同的數據源
            if project_type == "engineering":
                progress_model = ProjectPVProgress
                expected_model = ProjectPVExpectedProgress
            elif project_type == "bank":
                progress_model = PVBankProgress
                expected_model = PVBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            current_year = datetime.datetime.now().year
            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                for pv in pvs:
                    # 對於每個PV，找到當年度當季的最後一週
                    for quarter in range(1, 5):
                        last_week_of_quarter = PvWeek.objects.filter(
                            year=current_year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = PvWeek.objects.get(
                                year=current_year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = progress_model.objects.filter(
                                pv_id=pv.pv_id, 
                                pv_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = expected_model.objects.filter(
                                        pv_id=pv.pv_id, 
                                        pv_week_id=progress_record.pv_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        if project_type == "bank":
                                            date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "pv_name": pv.pv_name,
                                                "construction_status": pv.construction_status,
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
                                                "pv_name": pv.pv_name,
                                                "construction_status": pv.construction_status,
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
                                        "pv_name": pv.pv_name,
                                        "construction_status": pv.construction_status,
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
                                        "pv_name": pv.pv_name,
                                        "construction_status": pv.construction_status,
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
                                "vb_name": item["pv_name"],
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
                                "vb_name": item["pv_name"],
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
                                "vb_name": item["pv_name"],
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
                                "vb_name": item["pv_name"],
                                "construction_status": item["construction_status"],
                                "date_range": date_range,
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
                                "vb_name": item["pv_name"],
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
                                "vb_name": item["pv_name"],
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
        
#region 計算迴路82周工程進度
class GetLoopProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            date_ranges_with_data = defaultdict(list)
            pv_date_ranges_with_data = defaultdict(list)
            breeding_date_ranges_with_data = defaultdict(list)

            if project_type not in ["engineering", "bank"]:
                return Response({"error": "Invalid project type."}, status=400)

            pv_progress_model = ProjectPVProgress if project_type == "engineering" else PVBankProgress
            pv_expected_model = ProjectPVExpectedProgress if project_type == "engineering" else PVBankProgressExpected

            breeding_progress_model = ProjectBreedingProgress if project_type == "engineering" else BreedingBankProgress
            breeding_expected_model = ProjectBreedingExpectedProgress if project_type == "engineering" else BreedingBankProgressExpected

            today = datetime.datetime.now().strftime("%Y-%m-%d")

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)

                for pv in pvs:
                    progress_records = pv_progress_model.objects.filter(pv_id=pv.pv_id).order_by('-pv_week_id')
                    last_progress_record = progress_records.first()
                    if progress_records.exists():
                        for progress_record in progress_records:
                            week_data = PvWeek.objects.filter(week_id=progress_record.pv_week_id.week_id).first()
                            if week_data and week_data.end_date.strftime("%Y-%m-%d") <= today:
                                expected_record = pv_expected_model.objects.filter(
                                    pv_id=pv.pv_id, 
                                    pv_week_id=progress_record.pv_week_id,
                                ).first()
                                actual = progress_record.progress_percentage if progress_record else last_progress_record.progress_percentage
                                expected = expected_record.progress_percentage if expected_record else 0  # Assuming zero if no expected record found
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                pv_date_ranges_with_data[date_range].append({
                                    "loop_name": pv.pv_name,
                                    "construction_status": pv.construction_status,
                                    "actual": actual,
                                    "expected": expected
                                })
                    else:
                        max_pv_week_id = pv_progress_model.objects.aggregate(Max('pv_week_id'))['pv_week_id__max']
                        week_data = PvWeek.objects.filter(week_id=max_pv_week_id).first()
                        if week_data:
                            date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                            pv_date_ranges_with_data[date_range].append({
                                "loop_name": pv.pv_name,
                                "construction_status": pv.construction_status,
                                "actual": 0,
                                "expected": 0,
                            })


                for breeding in breedings:
                    progress_records = breeding_progress_model.objects.filter(breeding_id=breeding.breeding_id).order_by('-breeding_week_id')
                    last_progress_record = progress_records.first()
                    if progress_records.exists():
                        for progress_record in progress_records:
                            week_data = BreedingWeek.objects.filter(week_id=progress_record.breeding_week_id.week_id).first()
                            if week_data and week_data.end_date.strftime("%Y-%m-%d") <= today:
                                expected_record = breeding_expected_model.objects.filter(
                                    breeding_id=breeding.breeding_id, 
                                    breeding_week_id=progress_record.breeding_week_id,
                                ).first()
                                actual = progress_record.progress_percentage if progress_record else last_progress_record.progress_percentage
                                expected = expected_record.progress_percentage if expected_record else 0  # Assuming zero if no expected record found
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                breeding_date_ranges_with_data[date_range].append({
                                    "loop_name": breeding.breeding_name,
                                    "construction_status": breeding.construction_status,
                                    "actual": actual,
                                    "expected": expected
                                })
                    else:
                        max_breeding_week_id = breeding_progress_model.objects.aggregate(Max('breeding_week_id'))['breeding_week_id__max']
                        week_data = BreedingWeek.objects.filter(week_id=max_breeding_week_id).first()
                        if week_data:
                            date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                            breeding_date_ranges_with_data[date_range].append({
                                "loop_name": breeding.breeding_name,
                                "construction_status": breeding.construction_status,
                                "actual": 0,
                                "expected": 0,
                            })

            for date_range in set(pv_date_ranges_with_data.keys()).union(breeding_date_ranges_with_data.keys()):
                pv_entries = {entry['loop_name']: entry for entry in pv_date_ranges_with_data.get(date_range, [])}
                breeding_entries = {entry['loop_name']: entry for entry in breeding_date_ranges_with_data.get(date_range, [])}

                all_loop_names = set(breeding_entries.keys()).union(pv_entries.keys())
                for loop_name in all_loop_names:
                    pv_actual = pv_entries.get(loop_name, {}).get('actual', 0)
                    pv_expected = pv_entries.get(loop_name, {}).get('expected', 0)
                    breeding_actual = breeding_entries.get(loop_name, {}).get('actual', 0)
                    breeding_expected = breeding_entries.get(loop_name, {}).get('expected', 0)

                    combined_actual = float(pv_actual) * 0.8 + float(breeding_actual) * 0.2
                    combined_expected = float(pv_expected) * 0.8 + float(breeding_expected) * 0.2

                    construction_status = pv_entries.get(loop_name, {}).get('construction_status', 0) or breeding_entries.get(loop_name, {}).get('construction_status', 0)

                    date_ranges_with_data[date_range].append({
                        "loop_name": loop_name,
                        "actual": combined_actual,
                        "expected": combined_expected,
                        "construction_status": construction_status
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
                            "vb_name": item["loop_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"],
                            "construction_status": item["construction_status"],
                        })
            else:
                for item in latest_data:
                    formatted_results.append({
                        "vb_name": item["loop_name"],
                        "date_range": latest_date_range,
                        "actual": item["actual"],
                        "expected": item["expected"],
                        "construction_status": item["construction_status"],
                    })
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "vb_name": item["loop_name"],
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
        
#region 計算所有迴路82季工程進度
class GetLoopAllQuarterProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            date_ranges_with_data = defaultdict(list)
            pv_date_ranges_with_data = defaultdict(list)
            breeding_date_ranges_with_data = defaultdict(list)

            if project_type not in ["engineering", "bank"]:
                return Response({"error": "Invalid project type."}, status=400)

            pv_progress_model = ProjectPVProgress if project_type == "engineering" else PVBankProgress
            pv_expected_model = ProjectPVExpectedProgress if project_type == "engineering" else PVBankProgressExpected

            breeding_progress_model = ProjectBreedingProgress if project_type == "engineering" else BreedingBankProgress
            breeding_expected_model = ProjectBreedingExpectedProgress if project_type == "engineering" else BreedingBankProgressExpected
            
            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)

                for pv in pvs:
                    # 找到每一個季度的最後一周
                    all_years = PvWeek.objects.values_list('year', flat=True).distinct()
                    for year in all_years:
                        for quarter in range(1, 5):
                            last_week_of_quarter = PvWeek.objects.filter(
                                year=year, 
                                quarter=quarter
                            ).aggregate(Max('week'))['week__max']

                            if last_week_of_quarter:
                                last_week = PvWeek.objects.get(
                                    year=year, 
                                    quarter=quarter, 
                                    week=last_week_of_quarter
                                )

                                progress_records = pv_progress_model.objects.filter(
                                    pv_id=pv.pv_id, 
                                    pv_week_id=last_week.week_id
                                )
                                if progress_records.exists():
                                    for progress_record in progress_records:
                                        expected_record = pv_expected_model.objects.filter(
                                            pv_id=pv.pv_id, 
                                            pv_week_id=progress_record.pv_week_id
                                        ).first()
                                        if expected_record:
                                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                            pv_date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "loop_name": pv.pv_name,
                                                "construction_status": pv.construction_status,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage
                                            })
                                else:
                                    # 若當周沒有進度，且不是當季最後一周，使用上一周的進度
                                    if last_week.week_id != 1:  # 確保不是季度第一周
                                        prev_week = PvWeek.objects.filter(
                                            year=year, 
                                            quarter=quarter, 
                                            week=last_week_of_quarter - 1
                                        ).first()
                                        if prev_week:
                                            prev_progress_records = pv_progress_model.objects.filter(
                                                pv_id=pv.pv_id, 
                                                pv_week_id=prev_week.week_id
                                            )
                                            if prev_progress_records.exists():
                                                for prev_progress_record in prev_progress_records:
                                                    prev_expected_record = pv_expected_model.objects.filter(
                                                        pv_id=pv.pv_id, 
                                                        pv_week_id=prev_progress_record.pv_week_id
                                                    ).first()
                                                    if prev_expected_record:
                                                        date_range = f"{prev_week.start_date.strftime('%Y-%m-%d')} - {prev_week.end_date.strftime('%Y-%m-%d')}"
                                                        pv_date_ranges_with_data[date_range].append({
                                                            "year": prev_week.year,
                                                            "quarter": prev_week.quarter,
                                                            "week": prev_week.week,
                                                            "loop_name": pv.pv_name,
                                                            "construction_status": pv.construction_status,
                                                            "actual": prev_progress_record.progress_percentage,
                                                            "expected": prev_expected_record.progress_percentage
                                                        })
                                    else:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        pv_date_ranges_with_data[date_range].append({
                                            "loop_name": pv.pv_name,
                                            "construction_status": pv.construction_status,
                                            "actual": 0,
                                            "expected": 0,
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                        })

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

                                progress_records = breeding_progress_model.objects.filter(
                                    breeding_id=breeding.breeding_id, 
                                    breeding_week_id=last_week.week_id
                                )
                                if progress_records.exists():
                                    for progress_record in progress_records:
                                        expected_record = breeding_expected_model.objects.filter(
                                            breeding_id=breeding.breeding_id, 
                                            breeding_week_id=progress_record.breeding_week_id
                                        ).first()
                                        if expected_record:
                                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                            breeding_date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "loop_name": breeding.breeding_name,
                                                "construction_status": breeding.construction_status,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage
                                            })
                                else:
                                    # 若當周沒有進度，且不是當季最後一周，使用上一周的進度
                                    if last_week.week_id != 1:  # 確保不是季度第一周
                                        prev_week = BreedingWeek.objects.filter(
                                            year=year, 
                                            quarter=quarter, 
                                            week=last_week_of_quarter - 1
                                        ).first()
                                        if prev_week:
                                            prev_progress_records = breeding_progress_model.objects.filter(
                                                breeding_id=breeding.breeding_id, 
                                                breeding_week_id=prev_week.week_id
                                            )
                                            if prev_progress_records.exists():
                                                for prev_progress_record in prev_progress_records:
                                                    prev_expected_record = breeding_expected_model.objects.filter(
                                                        breeding_id=breeding.breeding_id, 
                                                        breeding_week_id=prev_progress_record.breeding_week_id
                                                    ).first()
                                                    if prev_expected_record:
                                                        date_range = f"{prev_week.start_date.strftime('%Y-%m-%d')} - {prev_week.end_date.strftime('%Y-%m-%d')}"
                                                        breeding_date_ranges_with_data[date_range].append({
                                                            "year": prev_week.year,
                                                            "quarter": prev_week.quarter,
                                                            "week": prev_week.week,
                                                            "loop_name": breeding.breeding_name,
                                                            "construction_status": breeding.construction_status,
                                                            "actual": prev_progress_record.progress_percentage,
                                                            "expected": prev_expected_record.progress_percentage
                                                        })
                                    else:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        breeding_date_ranges_with_data[date_range].append({
                                            "loop_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": 0,
                                            "expected": 0,
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                        })
            
            for date_range in set(pv_date_ranges_with_data.keys()).union(breeding_date_ranges_with_data.keys()):
                pv_entries = {entry['loop_name']: entry for entry in pv_date_ranges_with_data.get(date_range, [])}
                breeding_entries = {entry['loop_name']: entry for entry in breeding_date_ranges_with_data.get(date_range, [])}

                all_loop_names = set(breeding_entries.keys()).union(pv_entries.keys())
                for loop_name in all_loop_names:
                    pv_actual = pv_entries.get(loop_name, {}).get('actual', 0)
                    pv_expected = pv_entries.get(loop_name, {}).get('expected', 0)
                    breeding_actual = breeding_entries.get(loop_name, {}).get('actual', 0)
                    breeding_expected = breeding_entries.get(loop_name, {}).get('expected', 0)

                    combined_actual = float(pv_actual) * 0.8 + float(breeding_actual) * 0.2 
                    combined_expected = float(pv_expected) * 0.8 + float(breeding_expected) * 0.2

                    construction_status = pv_entries.get(loop_name, {}).get('construction_status', 0) or breeding_entries.get(loop_name, {}).get('construction_status', 0)

                    year = pv_entries.get(loop_name, {}).get('year', 0) or breeding_entries.get(loop_name, {}).get('year', 0)
                    quarter = pv_entries.get(loop_name, {}).get('quarter', 0) or breeding_entries.get(loop_name, {}).get('quarter', 0)
                    week = pv_entries.get(loop_name, {}).get('week', 0) or breeding_entries.get(loop_name, {}).get('week', 0)

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
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "vb_name": item["loop_name"],
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
                        "vb_name": item["loop_name"],
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
                            "vb_name": item["loop_name"],
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
        
#region 計算迴路82季工程進度
class GetLoopQuarterProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            date_ranges_with_data = defaultdict(list)
            pv_date_ranges_with_data = defaultdict(list)
            breeding_date_ranges_with_data = defaultdict(list)

            if project_type not in ["engineering", "bank"]:
                return Response({"error": "Invalid project type."}, status=400)

            pv_progress_model = ProjectPVProgress if project_type == "engineering" else PVBankProgress
            pv_expected_model = ProjectPVExpectedProgress if project_type == "engineering" else PVBankProgressExpected

            breeding_progress_model = ProjectBreedingProgress if project_type == "engineering" else BreedingBankProgress
            breeding_expected_model = ProjectBreedingExpectedProgress if project_type == "engineering" else BreedingBankProgressExpected
            
            current_year = datetime.datetime.now().year

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)
                for pv in pvs:
                    for quarter in range(1, 5):
                        last_week_of_quarter = PvWeek.objects.filter(
                            year=current_year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = PvWeek.objects.get(
                                year=current_year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = pv_progress_model.objects.filter(
                                pv_id=pv.pv_id, 
                                pv_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = pv_expected_model.objects.filter(
                                        pv_id=pv.pv_id, 
                                        pv_week_id=progress_record.pv_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        pv_date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "loop_name": pv.pv_name,
                                            "construction_status": pv.construction_status,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage
                                        })
                            else:
                                # 若當周沒有進度，且不是當季最後一周，使用上一周的進度
                                if last_week.week_id != 1:  # 確保不是季度第一周
                                    prev_week = PvWeek.objects.filter(
                                        year= current_year, 
                                        quarter=quarter, 
                                        week=last_week_of_quarter - 1
                                    ).first()
                                    if prev_week:
                                        prev_progress_records = pv_progress_model.objects.filter(
                                            pv_id=pv.pv_id, 
                                            pv_week_id=prev_week.week_id
                                        )
                                        if prev_progress_records.exists():
                                            for prev_progress_record in prev_progress_records:
                                                prev_expected_record = pv_expected_model.objects.filter(
                                                    pv_id=pv.pv_id, 
                                                    pv_week_id=prev_progress_record.pv_week_id
                                                ).first()
                                                if prev_expected_record:
                                                    date_range = f"{prev_week.start_date.strftime('%Y-%m-%d')} - {prev_week.end_date.strftime('%Y-%m-%d')}"
                                                    pv_date_ranges_with_data[date_range].append({
                                                        "year": prev_week.year,
                                                        "quarter": prev_week.quarter,
                                                        "week": prev_week.week,
                                                        "loop_name": pv.pv_name,
                                                        "construction_status": pv.construction_status,
                                                        "actual": prev_progress_record.progress_percentage,
                                                        "expected": prev_expected_record.progress_percentage
                                                    })
                                else:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    pv_date_ranges_with_data[date_range].append({
                                        "loop_name": pv.pv_name,
                                        "construction_status": pv.construction_status,
                                        "actual": 0,
                                        "expected": 0,
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                    })

                for breeding in breedings:
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

                            progress_records = breeding_progress_model.objects.filter(
                                breeding_id=breeding.breeding_id, 
                                breeding_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = breeding_expected_model.objects.filter(
                                        breeding_id=breeding.breeding_id, 
                                        breeding_week_id=progress_record.breeding_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        breeding_date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "loop_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage
                                        })
                            else:
                                # 若當周沒有進度，且不是當季最後一周，使用上一周的進度
                                if last_week.week_id != 1:  # 確保不是季度第一周
                                    prev_week = BreedingWeek.objects.filter(
                                        year=current_year, 
                                        quarter=quarter, 
                                        week=last_week_of_quarter - 1
                                    ).first()
                                    if prev_week:
                                        prev_progress_records = breeding_progress_model.objects.filter(
                                            breeding_id=breeding.breeding_id, 
                                            breeding_week_id=prev_week.week_id
                                        )
                                        if prev_progress_records.exists():
                                            for prev_progress_record in prev_progress_records:
                                                prev_expected_record = breeding_expected_model.objects.filter(
                                                    breeding_id=breeding.breeding_id, 
                                                    breeding_week_id=prev_progress_record.breeding_week_id
                                                ).first()
                                                if prev_expected_record:
                                                    date_range = f"{prev_week.start_date.strftime('%Y-%m-%d')} - {prev_week.end_date.strftime('%Y-%m-%d')}"
                                                    breeding_date_ranges_with_data[date_range].append({
                                                        "year": prev_week.year,
                                                        "quarter": prev_week.quarter,
                                                        "week": prev_week.week,
                                                        "loop_name": breeding.breeding_name,
                                                        "construction_status": breeding.construction_status,
                                                        "actual": prev_progress_record.progress_percentage,
                                                        "expected": prev_expected_record.progress_percentage
                                                    })
                                else:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    breeding_date_ranges_with_data[date_range].append({
                                        "loop_name": breeding.breeding_name,
                                        "construction_status": breeding.construction_status,
                                        "actual": 0,
                                        "expected": 0,
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                    })
            
            for date_range in set(pv_date_ranges_with_data.keys()).union(breeding_date_ranges_with_data.keys()):
                pv_entries = {entry['loop_name']: entry for entry in pv_date_ranges_with_data.get(date_range, [])}
                breeding_entries = {entry['loop_name']: entry for entry in breeding_date_ranges_with_data.get(date_range, [])}

                all_loop_names = set(breeding_entries.keys()).union(pv_entries.keys())
                for loop_name in all_loop_names:
                    pv_actual = pv_entries.get(loop_name, {}).get('actual', 0)
                    pv_expected = pv_entries.get(loop_name, {}).get('expected', 0)
                    breeding_actual = breeding_entries.get(loop_name, {}).get('actual', 0)
                    breeding_expected = breeding_entries.get(loop_name, {}).get('expected', 0)

                    combined_actual = float(pv_actual) * 0.8 + float(breeding_actual) * 0.2 
                    combined_expected = float(pv_expected) * 0.8 + float(breeding_expected) * 0.2

                    construction_status = pv_entries.get(loop_name, {}).get('construction_status', 0) or breeding_entries.get(loop_name, {}).get('construction_status', 0)

                    year = pv_entries.get(loop_name, {}).get('year', 0) or breeding_entries.get(loop_name, {}).get('year', 0)
                    quarter = pv_entries.get(loop_name, {}).get('quarter', 0) or breeding_entries.get(loop_name, {}).get('quarter', 0)
                    week = pv_entries.get(loop_name, {}).get('week', 0) or breeding_entries.get(loop_name, {}).get('week', 0)

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
                        formatted_results.append({
                            "year": item["year"],
                            "quarter": item["quarter"],
                            "week": item["week"],
                            "vb_name": item["loop_name"],
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
                        "vb_name": item["loop_name"],
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
                            "vb_name": item["loop_name"],
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
class GetPVQuarterChartProgress(APIView):
    def get(self, request, loop_id, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            if project_type == "engineering":
                progress_model = ProjectPVProgress
                expected_model = ProjectPVExpectedProgress
            elif project_type == "bank":
                progress_model = PVBankProgress
                expected_model = PVBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            current_year = datetime.datetime.now().year
            labels = [f"Q{quarter}" for quarter in range(1, 5)]

            datasets = []

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                for pv in pvs:
                    actual_data = []
                    expected_data = []
                    for quarter in range(1, 5):
                        last_week_of_quarter = PvWeek.objects.filter(
                            year=current_year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = PvWeek.objects.get(
                                year=current_year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_record = progress_model.objects.filter(
                                pv_id=pv.pv_id, 
                                pv_week_id=last_week.week_id
                            ).first()

                            expected_record = expected_model.objects.filter(
                                pv_id=pv.pv_id, 
                                pv_week_id=last_week.week_id
                            ).first() if progress_record else None

                            actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                            expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                            actual_data.append(actual_percentage)
                            expected_data.append(expected_percentage)

                    base_color = get_color_from_name(pv.pv_name)

                    datasets.append({
                        "label": f"{pv.pv_name} 實際",
                        "data": actual_data,
                        "backgroundColor": base_color,
                        "borderColor": base_color
                    })
                    datasets.append({
                        "label": f"{pv.pv_name} 預計",
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
class GetPVAllQuarterChartProgress(APIView):
    def get(self, request, loop_id, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            if project_type == "engineering":
                progress_model = ProjectPVProgress
                expected_model = ProjectPVExpectedProgress
            elif project_type == "bank":
                progress_model = PVBankProgress
                expected_model = PVBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            datasets = []
            all_years = PvWeek.objects.values_list('year', flat=True).order_by('year').distinct()

            labels = [f"{year} Q{quarter}" for year in all_years for quarter in range(1, 5)]

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                for pv in pvs:
                    actual_data = []
                    expected_data = []
                    for year in all_years:
                        for quarter in range(1, 5):
                            last_week_of_quarter = PvWeek.objects.filter(
                                year=year, 
                                quarter=quarter
                            ).aggregate(Max('week'))['week__max']

                            if last_week_of_quarter:
                                last_week = PvWeek.objects.get(
                                    year=year, 
                                    quarter=quarter, 
                                    week=last_week_of_quarter
                                )

                                progress_record = progress_model.objects.filter(
                                    pv_id=pv.pv_id, 
                                    pv_week_id=last_week.week_id
                                ).first()

                                expected_record = expected_model.objects.filter(
                                    pv_id=pv.pv_id, 
                                    pv_week_id=last_week.week_id
                                ).first() if progress_record else None

                                actual_percentage = (progress_record.progress_percentage * 100) if progress_record else 0
                                expected_percentage = (expected_record.progress_percentage * 100) if expected_record else 0

                                actual_data.append(actual_percentage)
                                expected_data.append(expected_percentage)

                    base_color = get_color_from_name(pv.pv_name)

                    datasets.append({
                        "label": f"{pv.pv_name} Actual",
                        "data": actual_data,
                        "backgroundColor": base_color,
                        "borderColor": base_color
                    })
                    datasets.append({
                        "label": f"{pv.pv_name} Expected",
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
class GetPVWeekChartProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            if project_type == "engineering":
                progress_model = ProjectPVProgress
                expected_model = ProjectPVExpectedProgress
            elif project_type == "bank":
                progress_model = PVBankProgress
                expected_model = PVBankProgressExpected
            else:
                return Response({"error": "Invalid project type."}, status=400)

            # 獲取所有周，並由新到舊排序
            all_weeks = PvWeek.objects.annotate(
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
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                for pv in pvs:
                    actual_data = []
                    expected_data = []
                    for week in sorted_weeks:
                        progress_record = progress_model.objects.filter(
                            pv_id=pv.pv_id,
                            pv_week_id=week.week_id
                        ).first()

                        expected_record = expected_model.objects.filter(
                            pv_id=pv.pv_id,
                            pv_week_id=week.week_id
                        ).first()

                        actual_percentage = progress_record.progress_percentage * 100 if progress_record else 0
                        expected_percentage = expected_record.progress_percentage * 100 if expected_record else 0

                        actual_data.append(actual_percentage)
                        expected_data.append(expected_percentage)

                    base_color = get_color_from_name(pv.pv_name)

                    datasets.append({
                        "label": f"{pv.pv_name} Actual",
                        "data": actual_data,
                        "backgroundColor": base_color,
                        "borderColor": base_color
                    })
                    datasets.append({
                        "label": f"{pv.pv_name} Expected",
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

#region 計算迴路82周工作進度報表
class GetLoopChartProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            pv_date_ranges_with_data = defaultdict(list)
            breeding_date_ranges_with_data = defaultdict(list)

            if project_type not in ["engineering", "bank"]:
                return Response({"error": "Invalid project type."}, status=400)

            pv_progress_model = ProjectPVProgress if project_type == "engineering" else PVBankProgress
            pv_expected_model = ProjectPVExpectedProgress if project_type == "engineering" else PVBankProgressExpected

            breeding_progress_model = ProjectBreedingProgress if project_type == "engineering" else BreedingBankProgress
            breeding_expected_model = ProjectBreedingExpectedProgress if project_type == "engineering" else BreedingBankProgressExpected

            # 獲取所有周，並由新到舊排序
            all_pv_weeks = PvWeek.objects.annotate(
                date_range=Concat(
                    'start_date', V(' - '), 'end_date',
                    output_field=CharField()
                )
            ).order_by('-start_date').values_list('date_range', flat=True).distinct()

            all_breeding_weeks = BreedingWeek.objects.annotate(
                date_range=Concat(
                    'start_date', V(' - '), 'end_date',
                    output_field=CharField()
                )
            ).order_by('-start_date').values_list('date_range', flat=True).distinct()

            # 使用set去重並轉換為列表進行排序
            all_weeks = sorted(set(all_pv_weeks) | set(all_breeding_weeks), reverse=True)

            # 分頁處理
            paginator = Paginator(all_weeks, itemsPerPage)
            try:
                current_weeks = paginator.page(currentPage)
            except PageNotAnInteger:
                current_weeks = paginator.page(1)
            except EmptyPage:
                current_weeks = paginator.page(paginator.num_pages)

            sorted_weeks = sorted(list(current_weeks), key=lambda week: week.split(' - ')[0])

            labels = [week for week in sorted_weeks]

            today = datetime.datetime.now().strftime("%Y-%m-%d")

            datasets = []

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)

                for pv in pvs:
                    progress_records = pv_progress_model.objects.filter(pv_id=pv.pv_id).order_by('-pv_week_id')
                    last_progress_record = progress_records.first()
                    if progress_records.exists():
                        for progress_record in progress_records:
                            week_data = PvWeek.objects.filter(week_id=progress_record.pv_week_id.week_id).first()
                            if week_data and week_data.end_date.strftime("%Y-%m-%d") <= today:
                                expected_record = pv_expected_model.objects.filter(
                                    pv_id=pv.pv_id, 
                                    pv_week_id=progress_record.pv_week_id,
                                ).first()
                                actual = progress_record.progress_percentage if progress_record else last_progress_record.progress_percentage
                                expected = expected_record.progress_percentage if expected_record else 0  # Assuming zero if no expected record found
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                pv_date_ranges_with_data[date_range].append({
                                    "loop_name": pv.pv_name,
                                    "construction_status": pv.construction_status,
                                    "actual": actual,
                                    "expected": expected
                                })
                    else:
                        max_pv_week_id = pv_progress_model.objects.aggregate(Max('pv_week_id'))['pv_week_id__max']
                        week_data = PvWeek.objects.filter(week_id=max_pv_week_id).first()
                        if week_data:
                            date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                            pv_date_ranges_with_data[date_range].append({
                                "loop_name": pv.pv_name,
                                "construction_status": pv.construction_status,
                                "actual": 0,
                                "expected": 0,
                            })


                for breeding in breedings:
                    progress_records = breeding_progress_model.objects.filter(breeding_id=breeding.breeding_id).order_by('-breeding_week_id')
                    last_progress_record = progress_records.first()
                    if progress_records.exists():
                        for progress_record in progress_records:
                            week_data = BreedingWeek.objects.filter(week_id=progress_record.breeding_week_id.week_id).first()
                            if week_data and week_data.end_date.strftime("%Y-%m-%d") <= today:
                                expected_record = breeding_expected_model.objects.filter(
                                    breeding_id=breeding.breeding_id, 
                                    breeding_week_id=progress_record.breeding_week_id,
                                ).first()
                                actual = progress_record.progress_percentage if progress_record else last_progress_record.progress_percentage
                                expected = expected_record.progress_percentage if expected_record else 0  # Assuming zero if no expected record found
                                date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                                breeding_date_ranges_with_data[date_range].append({
                                    "loop_name": breeding.breeding_name,
                                    "construction_status": breeding.construction_status,
                                    "actual": actual,
                                    "expected": expected
                                })
                    else:
                        max_breeding_week_id = breeding_progress_model.objects.aggregate(Max('breeding_week_id'))['breeding_week_id__max']
                        week_data = BreedingWeek.objects.filter(week_id=max_breeding_week_id).first()
                        if week_data:
                            date_range = f"{week_data.start_date.strftime('%Y-%m-%d')} - {week_data.end_date.strftime('%Y-%m-%d')}"
                            breeding_date_ranges_with_data[date_range].append({
                                "loop_name": breeding.breeding_name,
                                "construction_status": breeding.construction_status,
                                "actual": 0,
                                "expected": 0,
                            })

            loop_data = {}
            all_loop_names = set() 

            for date_range, entries in pv_date_ranges_with_data.items():
                for entry in entries:
                    all_loop_names.add(entry['loop_name'])

            for date_range, entries in breeding_date_ranges_with_data.items():
                for entry in entries:
                    all_loop_names.add(entry['loop_name'])


            for date_range in sorted_weeks:
                pv_entries = {entry['loop_name']: entry for entry in pv_date_ranges_with_data.get(date_range, [])}
                breeding_entries = {entry['loop_name']: entry for entry in breeding_date_ranges_with_data.get(date_range, [])}

                for loop_name in all_loop_names:
                    if loop_name not in loop_data:
                        loop_data[loop_name] = {'actual': [], 'expected': []}
                        
                    pv_actual = pv_entries.get(loop_name, {}).get('actual', 0)
                    pv_expected = pv_entries.get(loop_name, {}).get('expected', 0)
                    breeding_actual = breeding_entries.get(loop_name, {}).get('actual', 0)
                    breeding_expected = breeding_entries.get(loop_name, {}).get('expected', 0)
                
                    combined_actual = float(pv_actual) * 100 * 0.8 + float(breeding_actual) * 100 * 0.2
                    combined_expected = float(pv_expected) * 100 * 0.8 + float(breeding_expected) * 100 * 0.2

                    loop_data[loop_name]['actual'].append(combined_actual)
                    loop_data[loop_name]['expected'].append(combined_expected)

            for loop_name, data in loop_data.items():
                base_color = get_color_from_name(loop_name)
                datasets.append({
                    "label": f"{loop_name} Actual",
                    "data": data['actual'],
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{loop_name} Expected",
                    "data": data['expected'],
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

#region 計算迴路82季工作進度
class GetLoopAllQuarterChartProgress(APIView):
    def get(self, request, loop_id, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            pv_date_ranges_with_data = defaultdict(list)
            breeding_date_ranges_with_data = defaultdict(list)

            if project_type not in ["engineering", "bank"]:
                return Response({"error": "Invalid project type."}, status=400)

            pv_progress_model = ProjectPVProgress if project_type == "engineering" else PVBankProgress
            pv_expected_model = ProjectPVExpectedProgress if project_type == "engineering" else PVBankProgressExpected

            breeding_progress_model = ProjectBreedingProgress if project_type == "engineering" else BreedingBankProgress
            breeding_expected_model = ProjectBreedingExpectedProgress if project_type == "engineering" else BreedingBankProgressExpected
            
            datasets = []

            pv_years = PvWeek.objects.values_list('year', flat=True).distinct().order_by('-year')  
            breeding_years = BreedingWeek.objects.values_list('year', flat=True).distinct().order_by('-year')  
            all_years = sorted(set(pv_years) | set(breeding_years), reverse=True)  

            labels = [f"{year} Q{quarter}" for year in all_years for quarter in range(1, 5)]

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)

                for pv in pvs:
                    # 找到每一個季度的最後一周
                    all_years = PvWeek.objects.values_list('year', flat=True).distinct()
                    for year in all_years:
                        for quarter in range(1, 5):
                            last_week_of_quarter = PvWeek.objects.filter(
                                year=year, 
                                quarter=quarter
                            ).aggregate(Max('week'))['week__max']

                            if last_week_of_quarter:
                                last_week = PvWeek.objects.get(
                                    year=year, 
                                    quarter=quarter, 
                                    week=last_week_of_quarter
                                )

                                progress_records = pv_progress_model.objects.filter(
                                    pv_id=pv.pv_id, 
                                    pv_week_id=last_week.week_id
                                )
                                if progress_records.exists():
                                    for progress_record in progress_records:
                                        expected_record = pv_expected_model.objects.filter(
                                            pv_id=pv.pv_id, 
                                            pv_week_id=progress_record.pv_week_id
                                        ).first()
                                        if expected_record:
                                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                            pv_date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "loop_name": pv.pv_name,
                                                "construction_status": pv.construction_status,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage
                                            })
                                else:
                                    # 若當周沒有進度，且不是當季最後一周，使用上一周的進度
                                    if last_week.week_id != 1:  # 確保不是季度第一周
                                        prev_week = PvWeek.objects.filter(
                                            year=year, 
                                            quarter=quarter, 
                                            week=last_week_of_quarter - 1
                                        ).first()
                                        if prev_week:
                                            prev_progress_records = pv_progress_model.objects.filter(
                                                pv_id=pv.pv_id, 
                                                pv_week_id=prev_week.week_id
                                            )
                                            if prev_progress_records.exists():
                                                for prev_progress_record in prev_progress_records:
                                                    prev_expected_record = pv_expected_model.objects.filter(
                                                        pv_id=pv.pv_id, 
                                                        pv_week_id=prev_progress_record.pv_week_id
                                                    ).first()
                                                    if prev_expected_record:
                                                        date_range = f"{prev_week.start_date.strftime('%Y-%m-%d')} - {prev_week.end_date.strftime('%Y-%m-%d')}"
                                                        pv_date_ranges_with_data[date_range].append({
                                                            "year": prev_week.year,
                                                            "quarter": prev_week.quarter,
                                                            "week": prev_week.week,
                                                            "loop_name": pv.pv_name,
                                                            "construction_status": pv.construction_status,
                                                            "actual": prev_progress_record.progress_percentage,
                                                            "expected": prev_expected_record.progress_percentage
                                                        })
                                    else:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        pv_date_ranges_with_data[date_range].append({
                                            "loop_name": pv.pv_name,
                                            "construction_status": pv.construction_status,
                                            "actual": 0,
                                            "expected": 0,
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                        })

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

                                progress_records = breeding_progress_model.objects.filter(
                                    breeding_id=breeding.breeding_id, 
                                    breeding_week_id=last_week.week_id
                                )
                                if progress_records.exists():
                                    for progress_record in progress_records:
                                        expected_record = breeding_expected_model.objects.filter(
                                            breeding_id=breeding.breeding_id, 
                                            breeding_week_id=progress_record.breeding_week_id
                                        ).first()
                                        if expected_record:
                                            date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                            breeding_date_ranges_with_data[date_range].append({
                                                "year": last_week.year,
                                                "quarter": last_week.quarter,
                                                "week": last_week.week,
                                                "loop_name": breeding.breeding_name,
                                                "construction_status": breeding.construction_status,
                                                "actual": progress_record.progress_percentage,
                                                "expected": expected_record.progress_percentage
                                            })
                                else:
                                    # 若當周沒有進度，且不是當季最後一周，使用上一周的進度
                                    if last_week.week_id != 1:  # 確保不是季度第一周
                                        prev_week = BreedingWeek.objects.filter(
                                            year=year, 
                                            quarter=quarter, 
                                            week=last_week_of_quarter - 1
                                        ).first()
                                        if prev_week:
                                            prev_progress_records = breeding_progress_model.objects.filter(
                                                breeding_id=breeding.breeding_id, 
                                                breeding_week_id=prev_week.week_id
                                            )
                                            if prev_progress_records.exists():
                                                for prev_progress_record in prev_progress_records:
                                                    prev_expected_record = breeding_expected_model.objects.filter(
                                                        breeding_id=breeding.breeding_id, 
                                                        breeding_week_id=prev_progress_record.breeding_week_id
                                                    ).first()
                                                    if prev_expected_record:
                                                        date_range = f"{prev_week.start_date.strftime('%Y-%m-%d')} - {prev_week.end_date.strftime('%Y-%m-%d')}"
                                                        breeding_date_ranges_with_data[date_range].append({
                                                            "year": prev_week.year,
                                                            "quarter": prev_week.quarter,
                                                            "week": prev_week.week,
                                                            "loop_name": breeding.breeding_name,
                                                            "construction_status": breeding.construction_status,
                                                            "actual": prev_progress_record.progress_percentage,
                                                            "expected": prev_expected_record.progress_percentage
                                                        })
                                    else:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        breeding_date_ranges_with_data[date_range].append({
                                            "loop_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": 0,
                                            "expected": 0,
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                        })
            
            loop_data = {}
            all_loop_names = set()

            for date_range, entries in pv_date_ranges_with_data.items():
                for entry in entries:
                    all_loop_names.add(entry['loop_name'])

            for date_range, entries in breeding_date_ranges_with_data.items():
                for entry in entries:
                    all_loop_names.add(entry['loop_name'])

            for date_range in set(pv_date_ranges_with_data.keys()).union(breeding_date_ranges_with_data.keys()):
                pv_entries = {entry['loop_name']: entry for entry in pv_date_ranges_with_data.get(date_range, [])}
                breeding_entries = {entry['loop_name']: entry for entry in breeding_date_ranges_with_data.get(date_range, [])}

                for loop_name in all_loop_names:
                    if loop_name not in loop_data:
                        loop_data[loop_name] = {'actual': [], 'expected': []}

                    pv_actual = pv_entries.get(loop_name, {}).get('actual', 0)
                    pv_expected = pv_entries.get(loop_name, {}).get('expected', 0)
                    breeding_actual = breeding_entries.get(loop_name, {}).get('actual', 0)
                    breeding_expected = breeding_entries.get(loop_name, {}).get('expected', 0)

                    combined_actual = float(pv_actual) * 0.8 * 100 + float(breeding_actual) * 0.2 * 100 
                    combined_expected = float(pv_expected) * 0.8 * 100 + float(breeding_expected) * 0.2 * 100

                    loop_data[loop_name]['actual'].append(combined_actual)
                    loop_data[loop_name]['expected'].append(combined_expected)

            for loop_name, data in loop_data.items():
                base_color = get_color_from_name(loop_name)
                datasets.append({
                    "label": f"{loop_name} Actual",
                    "data": data['actual'],
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{loop_name} Expected",
                    "data": data['expected'],
                    "borderColor": base_color,
                    "borderDash": [5, 5]
                })
            return Response({
                "labels": labels,
                "datasets": datasets
            })
        
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion

#region 計算迴路82所有季工作進度
class GetLoopQuarterChartProgress(APIView):
    def get(self, request, loop_id, project_type):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)

            pv_date_ranges_with_data = defaultdict(list)
            breeding_date_ranges_with_data = defaultdict(list)

            if project_type not in ["engineering", "bank"]:
                return Response({"error": "Invalid project type."}, status=400)

            pv_progress_model = ProjectPVProgress if project_type == "engineering" else PVBankProgress
            pv_expected_model = ProjectPVExpectedProgress if project_type == "engineering" else PVBankProgressExpected

            breeding_progress_model = ProjectBreedingProgress if project_type == "engineering" else BreedingBankProgress
            breeding_expected_model = ProjectBreedingExpectedProgress if project_type == "engineering" else BreedingBankProgressExpected
            
            datasets = []

            year = datetime.datetime.now().year
            labels = [f"Q{quarter}" for quarter in range(1, 5)]

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                breedings = ProjectBreeding.objects.filter(case_id=case.case_id)

                for pv in pvs:
                    for quarter in range(1, 5):
                        last_week_of_quarter = PvWeek.objects.filter(
                            year=year, 
                            quarter=quarter
                        ).aggregate(Max('week'))['week__max']

                        if last_week_of_quarter:
                            last_week = PvWeek.objects.get(
                                year=year, 
                                quarter=quarter, 
                                week=last_week_of_quarter
                            )

                            progress_records = pv_progress_model.objects.filter(
                                pv_id=pv.pv_id, 
                                pv_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = pv_expected_model.objects.filter(
                                        pv_id=pv.pv_id, 
                                        pv_week_id=progress_record.pv_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        pv_date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "loop_name": pv.pv_name,
                                            "construction_status": pv.construction_status,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage
                                        })
                            else:
                                # 若當周沒有進度，且不是當季最後一周，使用上一周的進度
                                if last_week.week_id != 1:  # 確保不是季度第一周
                                    prev_week = PvWeek.objects.filter(
                                        year=year, 
                                        quarter=quarter, 
                                        week=last_week_of_quarter - 1
                                    ).first()
                                    if prev_week:
                                        prev_progress_records = pv_progress_model.objects.filter(
                                            pv_id=pv.pv_id, 
                                            pv_week_id=prev_week.week_id
                                        )
                                        if prev_progress_records.exists():
                                            for prev_progress_record in prev_progress_records:
                                                prev_expected_record = pv_expected_model.objects.filter(
                                                    pv_id=pv.pv_id, 
                                                    pv_week_id=prev_progress_record.pv_week_id
                                                ).first()
                                                if prev_expected_record:
                                                    date_range = f"{prev_week.start_date.strftime('%Y-%m-%d')} - {prev_week.end_date.strftime('%Y-%m-%d')}"
                                                    pv_date_ranges_with_data[date_range].append({
                                                        "year": prev_week.year,
                                                        "quarter": prev_week.quarter,
                                                        "week": prev_week.week,
                                                        "loop_name": pv.pv_name,
                                                        "construction_status": pv.construction_status,
                                                        "actual": prev_progress_record.progress_percentage,
                                                        "expected": prev_expected_record.progress_percentage
                                                    })
                                else:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    pv_date_ranges_with_data[date_range].append({
                                        "loop_name": pv.pv_name,
                                        "construction_status": pv.construction_status,
                                        "actual": 0,
                                        "expected": 0,
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                    })

                for breeding in breedings:
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

                            progress_records = breeding_progress_model.objects.filter(
                                breeding_id=breeding.breeding_id, 
                                breeding_week_id=last_week.week_id
                            )
                            if progress_records.exists():
                                for progress_record in progress_records:
                                    expected_record = breeding_expected_model.objects.filter(
                                        breeding_id=breeding.breeding_id, 
                                        breeding_week_id=progress_record.breeding_week_id
                                    ).first()
                                    if expected_record:
                                        date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                        breeding_date_ranges_with_data[date_range].append({
                                            "year": last_week.year,
                                            "quarter": last_week.quarter,
                                            "week": last_week.week,
                                            "loop_name": breeding.breeding_name,
                                            "construction_status": breeding.construction_status,
                                            "actual": progress_record.progress_percentage,
                                            "expected": expected_record.progress_percentage
                                        })
                            else:
                                # 若當周沒有進度，且不是當季最後一周，使用上一周的進度
                                if last_week.week_id != 1:  # 確保不是季度第一周
                                    prev_week = BreedingWeek.objects.filter(
                                        year=year, 
                                        quarter=quarter, 
                                        week=last_week_of_quarter - 1
                                    ).first()
                                    if prev_week:
                                        prev_progress_records = breeding_progress_model.objects.filter(
                                            breeding_id=breeding.breeding_id, 
                                            breeding_week_id=prev_week.week_id
                                        )
                                        if prev_progress_records.exists():
                                            for prev_progress_record in prev_progress_records:
                                                prev_expected_record = breeding_expected_model.objects.filter(
                                                    breeding_id=breeding.breeding_id, 
                                                    breeding_week_id=prev_progress_record.breeding_week_id
                                                ).first()
                                                if prev_expected_record:
                                                    date_range = f"{prev_week.start_date.strftime('%Y-%m-%d')} - {prev_week.end_date.strftime('%Y-%m-%d')}"
                                                    breeding_date_ranges_with_data[date_range].append({
                                                        "year": prev_week.year,
                                                        "quarter": prev_week.quarter,
                                                        "week": prev_week.week,
                                                        "loop_name": breeding.breeding_name,
                                                        "construction_status": breeding.construction_status,
                                                        "actual": prev_progress_record.progress_percentage,
                                                        "expected": prev_expected_record.progress_percentage
                                                    })
                                else:
                                    date_range = f"{last_week.start_date.strftime('%Y-%m-%d')} - {last_week.end_date.strftime('%Y-%m-%d')}"
                                    breeding_date_ranges_with_data[date_range].append({
                                        "loop_name": breeding.breeding_name,
                                        "construction_status": breeding.construction_status,
                                        "actual": 0,
                                        "expected": 0,
                                        "year": last_week.year,
                                        "quarter": last_week.quarter,
                                        "week": last_week.week,
                                    })
            
            loop_data = {}
            all_loop_names = set()

            for date_range, entries in pv_date_ranges_with_data.items():
                for entry in entries:
                    all_loop_names.add(entry['loop_name'])

            for date_range, entries in breeding_date_ranges_with_data.items():
                for entry in entries:
                    all_loop_names.add(entry['loop_name'])

            for date_range in set(pv_date_ranges_with_data.keys()).union(breeding_date_ranges_with_data.keys()):
                pv_entries = {entry['loop_name']: entry for entry in pv_date_ranges_with_data.get(date_range, [])}
                breeding_entries = {entry['loop_name']: entry for entry in breeding_date_ranges_with_data.get(date_range, [])}

                for loop_name in all_loop_names:
                    if loop_name not in loop_data:
                        loop_data[loop_name] = {'actual': [], 'expected': []}

                    pv_actual = pv_entries.get(loop_name, {}).get('actual', 0)
                    pv_expected = pv_entries.get(loop_name, {}).get('expected', 0)
                    breeding_actual = breeding_entries.get(loop_name, {}).get('actual', 0)
                    breeding_expected = breeding_entries.get(loop_name, {}).get('expected', 0)

                    combined_actual = float(pv_actual) * 0.8 * 100 + float(breeding_actual) * 0.2 * 100 
                    combined_expected = float(pv_expected) * 0.8 * 100 + float(breeding_expected) * 0.2 * 100

                    loop_data[loop_name]['actual'].append(combined_actual)
                    loop_data[loop_name]['expected'].append(combined_expected)

            for loop_name, data in loop_data.items():
                base_color = get_color_from_name(loop_name)
                datasets.append({
                    "label": f"{loop_name} Actual",
                    "data": data['actual'],
                    "backgroundColor": base_color,
                    "borderColor": base_color
                })
                datasets.append({
                    "label": f"{loop_name} Expected",
                    "data": data['expected'],
                    "borderColor": base_color,
                    "borderDash": [5, 5]
                })
            return Response({
                "labels": labels,
                "datasets": datasets
            })
        
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion
