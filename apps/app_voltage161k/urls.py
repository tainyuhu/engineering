from django.urls import path
from . import views


urlpatterns = [
    # 專案Voltage161K ProjectVoltage161K URLs
    path('project-voltage161k/', views.ProjectVoltage161KList.as_view(), name='project-voltage161k-list'),
    path('project-voltage161k/<int:pk>/', views.ProjectVoltage161KDetail.as_view(), name='project-voltage161k-detail'),
    
    # 專案Voltage161K歷史 ProjectVoltage161KHistory URLs
    path('project-voltage161k-history/', views.ProjectVoltage161KHistoryList.as_view(), name='project-voltage161k-history-list'),
    path('project-voltage161k-history/<int:pk>/', views.ProjectVoltage161KHistoryDetail.as_view(), name='project-voltage161k-history-detail'),
    
    # 專案Voltage161K進度(工程版) ProjectVoltage161KProgress URLs
    path('project-voltage161k-progress/', views.ProjectVoltage161KProgressList.as_view(), name='project-voltage161k-progress-list'),
    path('project-voltage161k-progress/<int:pk>/', views.ProjectVoltage161KProgressDetail.as_view(), name='project-voltage161k-progress-detail'),
    
    # 專案Voltage161K預期進度(工程版) ProjectVoltage161KExpectedProgress URLs
    path('project-voltage161k-expected-progress/', views.ProjectVoltage161KExpectedProgressList.as_view(), name='project-voltage161k-expected-progress-list'),
    path('project-voltage161k-expected-progress/<int:pk>/', views.ProjectVoltage161KExpectedProgressDetail.as_view(), name='project-voltage161k-expected-progress-detail'),
    
    # 專案Voltage161K進度(銀行版) Voltage161KBankProgress URLs
    path('voltage161k-bank-progress/', views.Voltage161KBankProgressList.as_view(), name='voltage161k-bank-progress-list'),
    path('voltage161k-bank-progress/<int:pk>/', views.Voltage161KBankProgressDetail.as_view(), name='voltage161k-bank-progress-detail'),
    
    # 專案Voltage161K進度歷史(銀行版) Voltage161KBankHistory URLs
    path('voltage161k-bank-history/', views.Voltage161KBankHistoryList.as_view(), name='voltage161k-bank-history-list'),
    path('voltage161k-bank-history/<int:pk>/', views.Voltage161KBankHistoryDetail.as_view(), name='voltage161k-bank-history-detail'),
    
    # 專案Voltage161K預期進度(銀行版) Voltage161KBankProgressExpected URLs
    path('voltage161k-bank-progress-expected/', views.Voltage161KBankProgressExpectedList.as_view(), name='voltage161k-bank-progress-expected-list'),
    path('voltage161k-bank-progress-expected/<int:pk>/', views.Voltage161KBankProgressExpectedDetail.as_view(), name='voltage161k-bank-progress-expected-detail'),
    
    # 專案Voltage161K預期進度歷史(銀行版) Voltage161KBankExpectedHistory URLs
    path('voltage161k-bank-expected-history/', views.Voltage161KBankExpectedHistoryList.as_view(), name='voltage161k-bank-expected-history-list'),
    path('voltage161k-bank-expected-history/<int:pk>/', views.Voltage161KBankExpectedHistoryDetail.as_view(), name='voltage161k-bank-expected-history-detail'),

    # 專案Voltage161K周
    path('voltage161k-week/', views.Voltage161KWeekList.as_view(), name='voltage161k-week-list'),
    path('voltage161k-week/<int:pk>/', views.Voltage161KWeekDetail.as_view(), name='voltage161k-week-detail'),

    # 計算周進度
    path('get_voltage161k_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetVoltage161KProgress.as_view(), name='get_voltage161k_progress'),
    # 計算所有季進度
    path('get_voltage161k_all_quarter_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetVoltage161KAllQuarterProgress.as_view(), name='get_voltage161k_all_quarter_progress'),
    # 計算所有季進度
    path('get_voltage161k_quarter_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetVoltage161KQuarterProgress.as_view(), name='get_voltage161k_quarter_progress'),
    # 計算即時季進度報表
    path('get_voltage161k_quarter_chart_progress/<int:project_id>/<str:project_type>/', views.GetVoltage161KQuarterChartProgress.as_view(), name='get_voltage161k_quarter_chart_progress'),
    # 計算所有季進度報表
    path('get_voltage161k_all_quarter_chart_progress/<int:project_id>/<str:project_type>/', views.GetVoltage161KAllQuarterChartProgress.as_view(), name='get_voltage161k_all_quarter_chart_progress'),
    # 計算所有周進度報表
    path('get_voltage161k_week_chart_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetVoltage161KWeekChartProgress.as_view(), name='get_voltage161k_week_chart_progress'),

]