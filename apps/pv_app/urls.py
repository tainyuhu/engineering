from django.urls import path
from .views import PVProjectList, PVProjectDetail, PvDetaileditemWeightList, PvDetaileditemWeightDetail, PvExpectedProgressList, PvExpectedProgressDetail, PvProgressList, PvProgressDetail, PvSubitemWeightList, PvSubitemWeightDetail, PvTasksList, PvTasksDetail, PvExpectedList, PvExpectedDetail, PvBankList, PvBankDetail,WeekProgressTableDataView, WeekBankProgressTableDataView, SeasonProgressTableDataView, SeasonWeekProgressTableDataView, PvWeeklyProgressSummaryList, PvWeeklyProgressSummaryDetail, SeasonProjectChartDataView, PVProjectByLoopList

urlpatterns = [
    # 清單
    path('pv-project/', PVProjectList.as_view(), name='pv-project-list'),
    path('pv-project/<int:pk>/', PVProjectDetail.as_view(), name='pv-project-detail'),
    path('pv-detaileditem-weight/', PvDetaileditemWeightList.as_view(), name='pv-detaileditem-weight-list'),
    path('pv-detaileditem-weight/<int:pk>/', PvDetaileditemWeightDetail.as_view(), name='pv-detaileditem-weight-detail'),
    path('pv-expected-progress/', PvExpectedProgressList.as_view(), name='pv-expected-progress-list'),
    path('pv-expected-progress/<int:pk>/', PvExpectedProgressDetail.as_view(), name='pv-expected-progress-detail'),
    path('pv-expected/', PvExpectedList.as_view(), name='pv-expected-list'),
    path('pv-expected/<int:pk>/', PvExpectedDetail.as_view(), name='pv-expected-detail'),
    path('pv-progress/', PvProgressList.as_view(), name='pv-progress-list'),
    path('pv-progress/<int:pk>/', PvProgressDetail.as_view(), name='pv-progress-detail'),
    path('pv-subitem-weight/', PvSubitemWeightList.as_view(), name='pv-subitem-weight-list'),
    path('pv-subitem-weight/<int:pk>/', PvSubitemWeightDetail.as_view(), name='pv-subitem-weight-detail'),
    path('pv-tasks/', PvTasksList.as_view(), name='pv-tasks-list'),
    path('pv-tasks/<int:pk>/', PvTasksDetail.as_view(), name='pv-tasks-detail'),
    path('pv-bank/', PvBankList.as_view(), name='pv-bank-list'),
    path('pv-bank/<int:pk>/', PvBankDetail.as_view(), name='pv-bank-detail'),
    path('pv-weekly-progress-summary/', PvWeeklyProgressSummaryList.as_view(), name='pv-weekly-progress-summary-list'),
    path('pv-weekly-progress-summary/<int:pk>/', PvWeeklyProgressSummaryDetail.as_view(), name='pv-weekly-progress-summary-detail'),
    
    # 運算
    # 計算迴路擁有那些PV工程
    path('pvprojects-by-loop/<int:selected_loop_id>/', PVProjectByLoopList.as_view(), name='pvprojects-by-loop'),
    # 計算週間工程進度(工程)
    path('week-table-data/<int:selected_loop_id>/', WeekProgressTableDataView.as_view(), name='week-table-data'),
    # 計算週間工程進度(銀行)
    path('week-bank-table-data/<int:selected_loop_id>/', WeekBankProgressTableDataView.as_view(), name='week-bank-table-data'),
    # 計算季度工程進度
    path('season-table-data/<int:selected_loop_id>/', SeasonProgressTableDataView.as_view(), name='season-table-data'),
    # 計算季度-週間工程進度
    path('season-week-table-data/<int:selected_loop_id>/', SeasonWeekProgressTableDataView.as_view(), name='season-week-table-data'),
    
    # 圖表
    # 計算所有案場圖表數據
    path('season-project-chart-data/<int:selected_loop_id>/', SeasonProjectChartDataView.as_view(), name='season-project-chart-data'),
]