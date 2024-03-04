from rest_framework import generics
from .models import LogisticParameters, LogisticParametersHistory, MajorItemPercentage, MajorItemPercentageHistory, PVBankExpectedHistory, PVBankHistory, PVBankProgress, PVBankProgressExpected, ProjectPV, ProjectPVExpectedProgress, ProjectPVHistory, ProjectPVProgress, Series, SeriesHistory, SubItemPercentage, SubItemPercentageHistory
from .serializers import LogisticParametersHistorySerializer, LogisticParametersSerializer, MajorItemPercentageHistorySerializer, PVBankExpectedHistorySerializer, PVBankHistorySerializer, PVBankProgressExpectedSerializer, PVBankProgressSerializer, ProjectPVExpectedProgressSerializer, ProjectPVHistorySerializer, ProjectPVProgressSerializer, ProjectPVSerializer, SeriesSerializer, SeriesHistorySerializer, MajorItemPercentageSerializer, SubItemPercentageHistorySerializer, SubItemPercentageSerializer
from apps.app_project.models import ProjectCase
from rest_framework.views import APIView
from rest_framework.response import Response

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

#region 計算
class GetPVProgressAndExpected(APIView):
    def get(self, request, loop_id):
        try:
            cases = ProjectCase.objects.filter(loop_id=loop_id)
            print(f"Found {cases.count()} cases for loop_id {loop_id}")

            results = []

            for case in cases:
                pvs = ProjectPV.objects.filter(case_id=case.case_id)
                print(f"Found {pvs.count()} PVs for case_id {case.case_id}")

                for pv in pvs:
                    progress_records = ProjectPVProgress.objects.filter(pv_id=pv.pv_id).order_by('-start_date')[:2]
                    expected_records = ProjectPVExpectedProgress.objects.filter(pv_id=pv.pv_id).order_by('-start_date')[:2]

                    print(f"Found {progress_records.count()} progress records and {expected_records.count()} expected records for pv_id {pv.pv_id}")

                    for progress in progress_records:
                        for expected in expected_records:
                            start_date_str = progress.start_date.strftime("%Y-%m-%d")
                            end_date_str = progress.end_date.strftime("%Y-%m-%d")
                            date_range = f"{start_date_str} - {end_date_str}"

                            if progress.start_date == expected.start_date and progress.end_date == expected.end_date:
                                results.append([pv.pv_name, date_range, [progress.progress_percentage, expected.expected_percentage]])
                                print(f"Match found for pv_name {pv.pv_name} with date range {date_range}")

            return Response({'results': results})
        except Exception as e:
            print(f"Error: {e}")
            return Response({'error': str(e)}, status=500)
#endregion