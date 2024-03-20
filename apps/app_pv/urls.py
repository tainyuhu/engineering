from django.urls import path
from . import views


urlpatterns = [
    # 工程價金系列 Series URLs
    path('series/', views.SeriesList.as_view(), name='series-list'),
    path('series/<int:pk>/', views.SeriesDetail.as_view(), name='series-detail'),
    
    # 工程價金系列歷史 SeriesHistory URLs
    path('series-history/', views.SeriesHistoryList.as_view(), name='series-history-list'),
    path('series-history/<int:pk>/', views.SeriesHistoryDetail.as_view(), name='series-history-detail'),
    
    # 大價金比例資料 MajorItemPercentage URLs
    path('major-item-percentage/', views.MajorItemPercentageList.as_view(), name='major-item-percentage-list'),
    path('major-item-percentage/<int:pk>/', views.MajorItemPercentageDetail.as_view(), name='major-item-percentage-detail'),
    
    # 大價金比例資料歷史 MajorItemPercentageHistory URLs
    path('major-item-percentage-history/', views.MajorItemPercentageHistoryList.as_view(), name='major-item-percentage-history-list'),
    path('major-item-percentage-history/<int:pk>/', views.MajorItemPercentageHistoryDetail.as_view(), name='major-item-percentage-history-detail'),
    
    # 小價金比例資料 SubItemPercentage URLs
    path('sub-item-percentage/', views.SubItemPercentageList.as_view(), name='sub-item-percentage-list'),
    path('sub-item-percentage/<int:pk>/', views.SubItemPercentageDetail.as_view(), name='sub-item-percentage-detail'),
    
    # 小價金比例資料歷史 SubItemPercentageHistory URLs
    path('sub-item-percentage-history/', views.SubItemPercentageHistoryList.as_view(), name='sub-item-percentage-history-list'),
    path('sub-item-percentage-history/<int:pk>/', views.SubItemPercentageHistoryDetail.as_view(), name='sub-item-percentage-history-detail'),
    
    # 邏輯斯蒂方程參數 LogisticParameters URLs
    path('logistic-parameters/', views.LogisticParametersList.as_view(), name='logistic-parameters-list'),
    path('logistic-parameters/<int:pk>/', views.LogisticParametersDetail.as_view(), name='logistic-parameters-detail'),
    
    # 邏輯斯蒂方程參數歷史 LogisticParametersHistory URLs
    path('logistic-parameters-history/', views.LogisticParametersHistoryList.as_view(), name='logistic-parameters-history-list'),
    path('logistic-parameters-history/<int:pk>/', views.LogisticParametersHistoryDetail.as_view(), name='logistic-parameters-history-detail'),
    
    # 專案PV ProjectPV URLs
    path('project-pv/', views.ProjectPVList.as_view(), name='project-pv-list'),
    path('project-pv/<int:pk>/', views.ProjectPVDetail.as_view(), name='project-pv-detail'),
    
    # 專案PV歷史 ProjectPVHistory URLs
    path('project-pv-history/', views.ProjectPVHistoryList.as_view(), name='project-pv-history-list'),
    path('project-pv-history/<int:pk>/', views.ProjectPVHistoryDetail.as_view(), name='project-pv-history-detail'),
    
    # 專案PV進度(工程版) ProjectPVProgress URLs
    path('project-pv-progress/', views.ProjectPVProgressList.as_view(), name='project-pv-progress-list'),
    path('project-pv-progress/<int:pk>/', views.ProjectPVProgressDetail.as_view(), name='project-pv-progress-detail'),
    
    # 專案PV預期進度(工程版) ProjectPVExpectedProgress URLs
    path('project-pv-expected-progress/', views.ProjectPVExpectedProgressList.as_view(), name='project-pv-expected-progress-list'),
    path('project-pv-expected-progress/<int:pk>/', views.ProjectPVExpectedProgressDetail.as_view(), name='project-pv-expected-progress-detail'),
    
    # 專案PV進度(銀行版) PVBankProgress URLs
    path('pv-bank-progress/', views.PVBankProgressList.as_view(), name='pv-bank-progress-list'),
    path('pv-bank-progress/<int:pk>/', views.PVBankProgressDetail.as_view(), name='pv-bank-progress-detail'),
    
    # 專案PV進度歷史(銀行版) PVBankHistory URLs
    path('pv-bank-history/', views.PVBankHistoryList.as_view(), name='pv-bank-history-list'),
    path('pv-bank-history/<int:pk>/', views.PVBankHistoryDetail.as_view(), name='pv-bank-history-detail'),
    
    # 專案PV預期進度(銀行版) PVBankProgressExpected URLs
    path('pv-bank-progress-expected/', views.PVBankProgressExpectedList.as_view(), name='pv-bank-progress-expected-list'),
    path('pv-bank-progress-expected/<int:pk>/', views.PVBankProgressExpectedDetail.as_view(), name='pv-bank-progress-expected-detail'),
    
    # 專案PV預期進度歷史(銀行版) PVBankExpectedHistory URLs
    path('pv-bank-expected-history/', views.PVBankExpectedHistoryList.as_view(), name='pv-bank-expected-history-list'),
    path('pv-bank-expected-history/<int:pk>/', views.PVBankExpectedHistoryDetail.as_view(), name='pv-bank-expected-history-detail'),

    # 專案PV周
    path('pv-week/', views.PvWeekList.as_view(), name='pv-week-list'),
    path('pv-week/<int:pk>/', views.PvWeekDetail.as_view(), name='pv-week-detail'),

    # 計算周進度
    path('get_pv_progress/<int:loop_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetPVProgress.as_view(), name='get_pv_progress'),
    # 計算所有季進度
    path('get_pv_all_quarter_progress/<int:loop_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetPVAllQuarterProgress.as_view(), name='get_pv_all_quarter_progress'),
    # 計算所有季進度
    path('get_pv_quarter_progress/<int:loop_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetPVQuarterProgress.as_view(), name='get_pv_quarter_progress'),
    # 計算季進度報表
    path('get_pv_quarter_chart_progress/<int:loop_id>/<str:project_type>/', views.GetPVQuarterChartProgress.as_view(), name='get_pv_quarter_chart_progress'),

]
