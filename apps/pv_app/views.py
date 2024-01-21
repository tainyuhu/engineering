from rest_framework import generics
from apps.plan_app.models import ProjectCase
from .models import PVProject, PvDetaileditemWeight, PvExpectedProgress, PvProgress, PvSubitemWeight, PvTasks, PvExpected, PvBank, PvWeeklyProgressSummary
from .serializers import PVProjectSerializer, PvDetaileditemWeightSerializer, PvExpectedProgressSerializer, PvProgressSerializer, PvSubitemWeightSerializer, PvTasksSerializer, PvExpectedSerializer, PvBankSerializer, WeekProgressTableDataSerializer, SeasonDataSerializer, SeasonTableDataSerializer, PvWeeklyProgressSummarySerializer
from rest_framework.views import APIView
from rest_framework.response import Response
from collections import defaultdict
from rest_framework import status
from django.http import Http404
from datetime import datetime, date
from rest_framework import status
from django.db.models import Max

# 清單
# PV工程的明細(建立、清單呈現)
class PVProjectList(generics.ListCreateAPIView):
    queryset = PVProject.objects.all()
    serializer_class = PVProjectSerializer

# PV工程的明細(新增、刪除、修改、查詢)
class PVProjectDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PVProject.objects.all()
    serializer_class = PVProjectSerializer

# PV工程子項目細節(建立、清單呈現)
class PvDetaileditemWeightList(generics.ListCreateAPIView):
    queryset = PvDetaileditemWeight.objects.all()
    serializer_class = PvDetaileditemWeightSerializer

# PV工程子項目細節(新增、刪除、修改、查詢)
class PvDetaileditemWeightDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvDetaileditemWeight.objects.all()
    serializer_class = PvDetaileditemWeightSerializer

# pv工程進度(建立、清單呈現)
class PvExpectedProgressList(generics.ListCreateAPIView):
    queryset = PvExpectedProgress.objects.all()
    serializer_class = PvExpectedProgressSerializer

# pv工程進度(新增、刪除、修改、查詢)
class PvExpectedProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvExpectedProgress.objects.all()
    serializer_class = PvExpectedProgressSerializer

# pv工程預計進度(建立、清單呈現)
class PvExpectedList(generics.ListCreateAPIView):
    queryset = PvExpected.objects.all()
    serializer_class = PvExpectedSerializer

# pv工程預計進度(新增、刪除、修改、查詢)
class PvExpectedDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvExpected.objects.all()
    serializer_class = PvExpectedSerializer

# pv工程實際進度(建立、清單呈現)
class PvProgressList(generics.ListCreateAPIView):
    queryset = PvProgress.objects.all()
    serializer_class = PvProgressSerializer

# pv工程實際進度(新增、刪除、修改、查詢)
class PvProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvProgress.objects.all()
    serializer_class = PvProgressSerializer

# pv工程子項目(建立、清單呈現)
class PvSubitemWeightList(generics.ListCreateAPIView):
    queryset = PvSubitemWeight.objects.all()
    serializer_class = PvSubitemWeightSerializer

# pv工程子項目(新增、刪除、修改、查詢)
class PvSubitemWeightDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvSubitemWeight.objects.all()
    serializer_class = PvSubitemWeightSerializer

# pv工程比例(建立、清單呈現)
class PvTasksList(generics.ListCreateAPIView):
    queryset = PvTasks.objects.all()
    serializer_class = PvTasksSerializer

# pv工程比例(新增、刪除、修改、查詢)
class PvTasksDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvTasks.objects.all()
    serializer_class = PvTasksSerializer

# pv工程銀行進度(建立、清單呈現)
class PvBankList(generics.ListCreateAPIView):
    queryset = PvBank.objects.all()
    serializer_class = PvBankSerializer

# pv工程銀行進度(新增、刪除、修改、查詢)
class PvBankDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvBank.objects.all()
    serializer_class = PvBankSerializer  

# pv工程加權進度(建立、清單呈現)
class PvWeeklyProgressSummaryList(generics.ListCreateAPIView):
    queryset = PvWeeklyProgressSummary.objects.all()
    serializer_class = PvWeeklyProgressSummarySerializer

# pv工程加權進度(新增、刪除、修改、查詢)
class PvWeeklyProgressSummaryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = PvWeeklyProgressSummary.objects.all()
    serializer_class = PvWeeklyProgressSummarySerializer 

# 運算
# 計算迴路擁有那些PV工程
class PVProjectByLoopList(APIView):
    def get(self, request, selected_loop_id):
        project_cases = ProjectCase.objects.filter(loop_id=selected_loop_id)
        pv_projects = PVProject.objects.filter(case__in=project_cases)
        serializer = PVProjectSerializer(pv_projects, many=True)
        return Response(serializer.data)
# WeekProgress 共用程式碼
class BaseWeekProgressTableDataView(APIView):
    def get_periods_and_headers(self, projects, progress_model):
        all_periods = set()
        for project in projects:
            progresses = progress_model.objects.filter(expected=project.id)
            for progress in progresses:
                period = f"{progress.start_date} ~ {progress.completion_date}"
                all_periods.add(period)
        sorted_periods = sorted(all_periods, key=lambda d: datetime.strptime(d.split(' ~ ')[0], '%Y-%m-%d'))
        return sorted_periods, list(sorted_periods)

    def get_summary_row_data(self, projects, sorted_periods):
        total_row_data = {"project_name": "加權總進度", "data": []}
        for period in sorted_periods:
            start_date, end_date = period.split(' ~ ')
            summary_item = PvWeeklyProgressSummary.objects.filter(start_date=start_date, end_date=end_date, expected__in=projects).first()
            weighted_progress = f"{round(summary_item.weighted_progress * 100, 2)}%" if summary_item else '-'
            total_row_data['data'].append({"type": "summary", "value": weighted_progress, "key": f"summary-{period}"})
        return total_row_data

    def get_project_rows_data(self, projects, sorted_periods, progress_model, expected_model):
        rows = []
        for project in projects:
            progress_data = progress_model.objects.filter(expected=project.id)
            expected_data = expected_model.objects.filter(expected=project.id)
            serialized_data = WeekProgressTableDataSerializer({'project': project, 'progress': progress_data, 'expected': expected_data})
            row_data = serialized_data.data
            row_data['data'] = []
            for period in sorted_periods:
                start_date, end_date = period.split(' ~ ')
                progress_item = progress_data.filter(start_date=start_date, completion_date=end_date).first()
                expected_item = expected_data.filter(start_date=start_date, completion_date=end_date).first()
                progress_value = f"{round(progress_item.progress * 100, 2)}%" if progress_item else '-'
                expected_value = f"{round(expected_item.progress * 100, 2)}%" if expected_item else '-'
                row_data['data'].append({"type": "progress", "value": progress_value, "key": f"progress-{project.project_name}-{period}"})
                row_data['data'].append({"type": "expected", "value": expected_value, "key": f"expected-{project.project_name}-{period}"})
            rows.append(row_data)
        return rows

# 計算週進度(工程)
class WeekProgressTableDataView(BaseWeekProgressTableDataView):
    def get(self, request, selected_loop_id, format=None):
        if not selected_loop_id:
            return Response({"headers": [], "rows": []})

        # 獲取案例跟工程項目
        project_cases = ProjectCase.objects.filter(loop=selected_loop_id)
        pv_projects = PVProject.objects.filter(case__in=project_cases)

        # 獲取時間區間與表頭
        sorted_periods, headers = self.get_periods_and_headers(pv_projects, PvProgress)

        # 計算加權總進度
        total_row_data = self.get_summary_row_data(pv_projects, sorted_periods)

        # 獲取項目數據
        project_rows = self.get_project_rows_data(pv_projects, sorted_periods, PvProgress, PvExpected)
        return Response({"headers": headers, "rows": [total_row_data] + project_rows})

# 計算週進度(銀行)
class WeekBankProgressTableDataView(BaseWeekProgressTableDataView):
    def get(self, request, selected_loop_id, format=None):
        if not selected_loop_id:
            return Response({"headers": [], "rows": []})

        # 獲取案例跟工程項目
        project_cases = ProjectCase.objects.filter(loop=selected_loop_id)
        pv_projects = PVProject.objects.filter(case__in=project_cases)

        # 獲取時間區間與表頭
        sorted_periods, headers = self.get_periods_and_headers(pv_projects, PvBank)

        # 計算加權總進度
        total_row_data = self.get_summary_row_data(pv_projects, sorted_periods)

        # 獲取項目數據
        project_rows = self.get_project_rows_data(pv_projects, sorted_periods, PvBank, PvExpected)
        return Response({"headers": headers, "rows": [total_row_data] + project_rows})

# 計算季進度
class SeasonProgressTableDataView(APIView):
    def get(self, request, selected_loop_id):
        # 获取所需数据
        matched_cases = ProjectCase.objects.filter(loop_id=selected_loop_id)
        matched_projects = PVProject.objects.filter(case__in=matched_cases)

        # 辅助函数
        def calculate_season(date):
            year = date.year
            day_of_year = date.timetuple().tm_yday
            week_number = ((day_of_year - 1) // 7) + 1

            if week_number <= 13:
                return f'{year}Q1'
            elif week_number <= 26:
                return f'{year}Q2'
            elif week_number <= 39:
                return f'{year}Q3'
            else:
                return f'{year}Q4'

        # 计算季度数据
        season_data = {}
        for project in matched_projects:
            progresses = PvBank.objects.filter(expected=project.id)
            expecteds = PvExpected.objects.filter(expected=project.id)

            for progress in progresses.union(expecteds):
                season = calculate_season(progress.start_date)
                key = (project.project_name, season)
                season_data.setdefault(key, {'actual': 0, 'expected': 0})
                if progress in progresses:
                    season_data[key]['actual'] = max(season_data[key]['actual'], progress.progress)
                else:
                    season_data[key]['expected'] = max(season_data[key]['expected'], progress.progress)

        # 总结数据
        summary_data = {}
        for season in set(season for _, season in season_data.keys()):
            highest_progress = PvWeeklyProgressSummary.objects.filter(
                start_date__year=season[:4],
                end_date__year=season[:4]
            ).aggregate(Max('weighted_progress'))['weighted_progress__max']
            summary_data[season] = highest_progress if highest_progress is not None else 0

        # 格式化返回数据
        formatted_data = {
            'headers': sorted(set(season for _, season in season_data.keys())),
            'rows': []
        }

        # 添加总计行
        total_row_data = {"project_name": "加權總進度", "data": []}
        for season in formatted_data['headers']:
            total_row_data['data'].append({
                'season': season,
                'type': 'summary',
                'value': f"{summary_data[season] * 100:.2f}%"
            })
        formatted_data['rows'].append(total_row_data)

        # 添加项目行
        for project in matched_projects:
            row = {'project_name': project.project_name, 'data': []}
            for season in formatted_data['headers']:
                key = (project.project_name, season)
                for data_type in ['actual', 'expected']:
                    value = f"{season_data.get(key, {}).get(data_type, 0) * 100:.2f}%" if key in season_data else '-'
                    row['data'].append({'season': season, 'type': data_type, 'value': value})
            formatted_data['rows'].append(row)

        return Response(formatted_data)

# 計算季-週間進度
class SeasonWeekProgressTableDataView(APIView):
    def get(self, request, selected_loop_id):
        
        # 測試 API 錯誤用
        # return Response({'headers': [], 'rows': [], 'msg': "88888"}, status=status.HTTP_404_NOT_FOUND)

        current_year = datetime.now().year

        # Fetching necessary data
        matched_cases = ProjectCase.objects.filter(loop_id=selected_loop_id)
        matched_projects = PVProject.objects.filter(case__in=matched_cases)

        all_periods = set()
        all_progress_data = []

        # Function to calculate week number and season
        def calculate_week_number(date_input):
            if isinstance(date_input, str):
                date_input = datetime.strptime(date_input, "%Y-%m-%d").date()
            elif isinstance(date_input, datetime):
                date_input = date_input.date()

            year = date_input.year
            start_of_year = date(year, 1, 1)
            end_of_year = date(year, 12, 31)

            # Calculate the day number since the start of the year
            day_of_year = (date_input - start_of_year).days + 1

            # Check if the current year is a leap year
            is_leap_year = (year % 4 == 0 and year % 100 != 0) or year % 400 == 0

            # Get the day of the week for Jan 1 and Dec 31
            start_day_of_week = start_of_year.weekday()
            end_day_of_week = end_of_year.weekday()

            # Calculate the week number
            week_number = (day_of_year - 1) // 7 + 1

            # Adjust for years where Jan 1 or Dec 31 is midweek
            if start_day_of_week > 4:
                week_number -= 1

            if end_day_of_week < 4 and date_input.month == 12 and date_input.day > 28:
                week_number = 1
                year += 1

            return year, week_number, is_leap_year


        def calculate_season(date_input):
            # Calculate the week number by unpacking the returned tuple
            year, week_number, is_leap_year = calculate_week_number(date_input)

            # Determine the season based on the week number
            if week_number <= 13:
                return f'{year}Q1'
            elif week_number <= 26:
                return f'{year}Q2'
            elif week_number <= 39:
                return f'{year}Q3'
            else:
                return f'{year}Q4'


        # Collecting periods and progress data
        for project in matched_projects:
            for pv_progress in PvProgress.objects.filter(expected=project.id):
                period = f"{pv_progress.start_date} ~ {pv_progress.completion_date}"
                all_periods.add(period)
                season = calculate_season(pv_progress.start_date)
                all_progress_data.append({
                    'project_name': project.project_name,
                    'period': period,
                    'season': season,
                    'type': 'actual',
                    'progress': pv_progress.progress
                })
            
            for pv_expected in PvExpected.objects.filter(expected=project.id):
                period = f"{pv_expected.start_date} ~ {pv_expected.completion_date}"
                all_periods.add(period)
                season = calculate_season(pv_expected.start_date)
                all_progress_data.append({
                    'project_name': project.project_name,
                    'period': period,
                    'season': season,
                    'type': 'expected',
                    'progress': pv_expected.progress
                })

        # Sorting periods
        sorted_periods = sorted(all_periods)

        # Headers based on seasons and the latest period
        headers = sorted(set([data['season'] for data in all_progress_data if data['season'].startswith(str(current_year))]))
        if sorted_periods:
            latest_period = sorted_periods[-1]
            headers.append(latest_period)

        total_season_data = {}
        for project in matched_projects:
            for pv_summary in PvWeeklyProgressSummary.objects.filter(expected=project.id):
                season = calculate_season(pv_summary.start_date)
                period = f"{pv_summary.start_date} ~ {pv_summary.end_date}"
                total_season_data[season] = max(total_season_data.get(season, 0), pv_summary.weighted_progress)
                total_season_data[period] = pv_summary.weighted_progress

        # 構建總計行數據
        total_row_data = {"project_name": "加權總進度", "data": []}
        for header in headers:
            weighted_progress = f"{total_season_data.get(header, 0) * 100:.2f}%"
            if weighted_progress == "0.00%":  # 如果没有数据
                weighted_progress = '-'
            total_row_data['data'].append({
                'season': header,
                'type': 'summary',
                'value': weighted_progress
            })

        # Constructing rows
        rows = [total_row_data]
        for project in matched_projects:
            row_data = {
                'project_name': project.project_name,
                'data': []
            }
            for header in headers:
                # Check if header is a date range
                is_date_range = " ~ " in header

                if not is_date_range:
                    # Season data
                    actual_data = next((d for d in all_progress_data if d['project_name'] == project.project_name and d['season'] == header and d['type'] == 'actual'), None)
                    expected_data = next((d for d in all_progress_data if d['project_name'] == project.project_name and d['season'] == header and d['type'] == 'expected'), None)
                else:
                    # Date range data
                    actual_data = next((d for d in all_progress_data if d['project_name'] == project.project_name and d['period'] == header and d['type'] == 'actual'), None)
                    expected_data = next((d for d in all_progress_data if d['project_name'] == project.project_name and d['period'] == header and d['type'] == 'expected'), None)

                actual_value = f"{actual_data['progress'] * 100:.2f}%" if actual_data else '-'
                expected_value = f"{expected_data['progress'] * 100:.2f}%" if expected_data else '-'

                row_data['data'].extend([
                    {'season': header, 'type': 'actual', 'value': actual_value},
                    {'season': header, 'type': 'expected', 'value': expected_value}
                ])
            rows.append(row_data)

        return Response({'headers': headers, 'rows': rows})

class SeasonProjectChartDataView(APIView):
    def calculate_week_number(self, date_input):
        if isinstance(date_input, str):
            date_input = datetime.strptime(date_input, "%Y-%m-%d").date()
        elif isinstance(date_input, datetime):
            date_input = date_input.date()

        year = date_input.year
        start_of_year = date(year, 1, 1)
        end_of_year = date(year, 12, 31)

        day_of_year = (date_input - start_of_year).days + 1
        is_leap_year = year % 4 == 0 and (year % 100 != 0 or year % 400 == 0)
        start_day_of_week = start_of_year.weekday()
        end_day_of_week = end_of_year.weekday()

        week_number = (day_of_year - 1) // 7 + 1
        if start_day_of_week > 4:
            week_number -= 1
        if end_day_of_week < 4 and date_input.month == 12 and date_input.day > 28:
            week_number = 1
            year += 1

        return year, week_number, is_leap_year

    def calculate_season(self, date):
        if not date:
            return None
        year, week_number, _ = self.calculate_week_number(date)
        if week_number <= 13:
            return f'{year}Q1'
        elif week_number <= 26:
            return f'{year}Q2'
        elif week_number <= 39:
            return f'{year}Q3'
        else:
            return f'{year}Q4'

    def get(self, request, selected_loop_id, *args, **kwargs):
        projects = PVProject.objects.filter(case__loop_id=selected_loop_id)

        progress_by_quarter = defaultdict(lambda: defaultdict(float))
        expected_by_quarter = defaultdict(lambda: defaultdict(float))

        for project in projects:
            for progress in PvProgress.objects.filter(expected=project):
                quarter = self.calculate_season(progress.start_date)
                if quarter:
                    progress_by_quarter[quarter][project.project_name] = max(
                        progress_by_quarter[quarter][project.project_name], progress.progress)

            for expected in PvExpected.objects.filter(expected=project):
                quarter = self.calculate_season(expected.start_date)
                if quarter:
                    expected_by_quarter[quarter][project.project_name] = max(
                        expected_by_quarter[quarter][project.project_name], expected.progress)

        all_quarters = sorted(set(progress_by_quarter).union(expected_by_quarter))
        
        projects_data = {project.project_name: {'actual': [], 'expected': []} for project in projects}

        for quarter in all_quarters:
            for project in projects:
                project_name = project.project_name
                projects_data[project_name]['actual'].append(
                    progress_by_quarter[quarter].get(project_name, 0)
                )
                projects_data[project_name]['expected'].append(
                    expected_by_quarter[quarter].get(project_name, 0)
                )

        datasets = []
        for project_name, data in projects_data.items():
            datasets.append({
                'label': f'{project_name} 實際進度',
                'data': data['actual'],
            })
            datasets.append({
                'label': f'{project_name} 預計進度',
                'data': data['expected'],
            })

        response_data = {
            'labels': all_quarters,
            'datasets': datasets
        }

        return Response(response_data)