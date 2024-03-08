from rest_framework import generics
from .models import LogisticParameters, LogisticParametersHistory, MajorItemPercentage, MajorItemPercentageHistory, PVBankExpectedHistory, PVBankHistory, PVBankProgress, PVBankProgressExpected, ProjectPV, ProjectPVExpectedProgress, ProjectPVHistory, ProjectPVProgress, Series, SeriesHistory, SubItemPercentage, SubItemPercentageHistory
from .serializers import LogisticParametersHistorySerializer, LogisticParametersSerializer, MajorItemPercentageHistorySerializer, PVBankExpectedHistorySerializer, PVBankHistorySerializer, PVBankProgressExpectedSerializer, PVBankProgressSerializer, ProjectPVExpectedProgressSerializer, ProjectPVHistorySerializer, ProjectPVProgressSerializer, ProjectPVSerializer, SeriesSerializer, SeriesHistorySerializer, MajorItemPercentageSerializer, SubItemPercentageHistorySerializer, SubItemPercentageSerializer
from apps.app_project.models import ProjectCase
from rest_framework.views import APIView
from rest_framework.response import Response
from collections import defaultdict, OrderedDict
from django.core.paginator import Paginator
from django.http import JsonResponse

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

        
#region 計算周銀行工程進度
class GetPVProgress(APIView):
    def get(self, request, loop_id, currentPage, itemsPerPage, project_type):
        try:
            print(f"Parameters: loop_id={loop_id}, currentPage={currentPage}, itemsPerPage={itemsPerPage}, project_type={project_type}")
            # 獲取所有 cases
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            print(f"Found {cases.count()} cases for loop_id {loop_id} {project_type}")

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
                    progress_records = progress_model.objects.filter(pv_id=pv.pv_id).order_by('-start_date')
                    for progress_record in progress_records:
                        expected_record = expected_model.objects.filter(
                            pv_id=pv.pv_id, 
                            start_date=progress_record.start_date, 
                            end_date=progress_record.end_date
                        ).first()
                        if expected_record:
                            date_range = f"{progress_record.start_date.strftime('%Y-%m-%d')} - {progress_record.end_date.strftime('%Y-%m-%d')}"
                            date_ranges_with_data[date_range].append({
                                "pv_name": pv.pv_name,
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
                            "pv_name": item["pv_name"],
                            "date_range": date_range,
                            "actual": item["actual"],
                            "expected": item["expected"]
                        })
            else:
                # 從第二頁開始，在資料頂部都增加最新的 date_range 數據
                for item in latest_data:
                    formatted_results.append({
                        "pv_name": item["pv_name"],
                        "date_range": latest_date_range,
                        "actual": item["actual"],
                        "expected": item["expected"]
                    })
                # 添加當前頁的其他數據
                for date_range, data in page_obj.object_list:
                    for item in data:
                        formatted_results.append({
                            "pv_name": item["pv_name"],
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