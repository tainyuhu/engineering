from django.urls import path
from . import views


urlpatterns = [
    # 專案Voltage228K ProjectVoltage228K URLs
    path('project-voltage228k/', views.ProjectVoltage228KList.as_view(), name='project-voltage228k-list'),
    path('project-voltage228k/<int:pk>/', views.ProjectVoltage228KDetail.as_view(), name='project-voltage228k-detail'),
    
    # 專案Voltage228K歷史 ProjectVoltage228KHistory URLs
    path('project-voltage228k-history/', views.ProjectVoltage228KHistoryList.as_view(), name='project-voltage228k-history-list'),
    path('project-voltage228k-history/<int:pk>/', views.ProjectVoltage228KHistoryDetail.as_view(), name='project-voltage228k-history-detail'),
    
    # 專案Voltage228K進度(工程版) ProjectVoltage228KProgress URLs
    path('project-voltage228k-progress/', views.ProjectVoltage228KProgressList.as_view(), name='project-voltage228k-progress-list'),
    path('project-voltage228k-progress/<int:pk>/', views.ProjectVoltage228KProgressDetail.as_view(), name='project-voltage228k-progress-detail'),
    
    # 專案Voltage228K預期進度(工程版) ProjectVoltage228KExpectedProgress URLs
    path('project-voltage228k-expected-progress/', views.ProjectVoltage228KExpectedProgressList.as_view(), name='project-voltage228k-expected-progress-list'),
    path('project-voltage228k-expected-progress/<int:pk>/', views.ProjectVoltage228KExpectedProgressDetail.as_view(), name='project-voltage228k-expected-progress-detail'),
    
    # 專案Voltage228K進度(銀行版) Voltage228KBankProgress URLs
    path('voltage228k-bank-progress/', views.Voltage228KBankProgressList.as_view(), name='voltage228k-bank-progress-list'),
    path('voltage228k-bank-progress/<int:pk>/', views.Voltage228KBankProgressDetail.as_view(), name='voltage228k-bank-progress-detail'),
    
    # 專案Voltage228K進度歷史(銀行版) Voltage228KBankHistory URLs
    path('voltage228k-bank-history/', views.Voltage228KBankHistoryList.as_view(), name='voltage228k-bank-history-list'),
    path('voltage228k-bank-history/<int:pk>/', views.Voltage228KBankHistoryDetail.as_view(), name='voltage228k-bank-history-detail'),
    
    # 專案Voltage228K預期進度(銀行版) Voltage228KBankProgressExpected URLs
    path('voltage228k-bank-progress-expected/', views.Voltage228KBankProgressExpectedList.as_view(), name='voltage228k-bank-progress-expected-list'),
    path('voltage228k-bank-progress-expected/<int:pk>/', views.Voltage228KBankProgressExpectedDetail.as_view(), name='voltage228k-bank-progress-expected-detail'),
    
    # 專案Voltage228K預期進度歷史(銀行版) Voltage228KBankExpectedHistory URLs
    path('voltage228k-bank-expected-history/', views.Voltage228KBankExpectedHistoryList.as_view(), name='voltage228k-bank-expected-history-list'),
    path('voltage228k-bank-expected-history/<int:pk>/', views.Voltage228KBankExpectedHistoryDetail.as_view(), name='voltage228k-bank-expected-history-detail'),

    # 專案Voltage228K周
    path('voltage228k-week/', views.Voltage228KWeekList.as_view(), name='voltage228k-week-list'),
    path('voltage228k-week/<int:pk>/', views.Voltage228KWeekDetail.as_view(), name='voltage228k-week-detail'),

    # 計算周進度
    path('get_voltage228k_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetVoltage228KProgress.as_view(), name='get_voltage228k_progress'),
    # 計算所有季進度
    path('get_voltage228k_all_quarter_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetVoltage228KAllQuarterProgress.as_view(), name='get_voltage228k_all_quarter_progress'),
    # 計算即時進度
    path('get_voltage228k_quarter_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetVoltage228KQuarterProgress.as_view(), name='get_voltage228k_quarter_progress'),
    # 計算周土木工程進度
    path('get_civil_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetCivilProgress.as_view(), name='get_civil_progress'),  
    # 計算周纜線工程進度
    path('get_cable_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetCableProgress.as_view(), name='get_cable_progress'),      
    # 計算所有季土木工程進度
    path('get_civil_all_quarter_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetCivilAllQuarterProgress.as_view(), name='get_civil_all_quarter_progress'),  
    # 計算所有季纜線工程進度
    path('get_cable_all_quarter_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetCableAllQuarterProgress.as_view(), name='get_cable_all_quarter_progress'),
    # 計算即時季土木工程進度
    path('get_civil_quarter_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetCivilQuarterProgress.as_view(), name='get_civil_all_quarter_progress'),  
    # 計算即時季纜線工程進度
    path('get_cable_quarter_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetCableQuarterProgress.as_view(), name='get_cable_all_quarter_progress'),            
    # 計算即時季進度報表
    path('get_civil_quarter_chart_progress/<int:project_id>/<str:project_type>/', views.GetCivilQuarterChartProgress.as_view(), name='get_civil_quarter_chart_progress'),
    # 計算所有季進度報表
    path('get_civil_all_quarter_chart_progress/<int:project_id>/<str:project_type>/', views.GetCivilAllQuarterChartProgress.as_view(), name='get_civil_all_quarter_chart_progress'),
    # 計算所有周進度報表
    path('get_civil_week_chart_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetCivilWeekChartProgress.as_view(), name='get_civil_week_chart_progress'),
    # 計算即時季進度報表
    path('get_cable_quarter_chart_progress/<int:project_id>/<str:project_type>/', views.GetCableQuarterChartProgress.as_view(), name='get_cable_quarter_chart_progress'),
    # 計算所有季進度報表
    path('get_cable_all_quarter_chart_progress/<int:project_id>/<str:project_type>/', views.GetCableAllQuarterChartProgress.as_view(), name='get_cable_all_quarter_chart_progress'),
    # 計算所有周進度報表
    path('get_cable_week_chart_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetCableWeekChartProgress.as_view(), name='get_cable_week_chart_progress'),
    # 計算即時季進度報表
    path('get_voltage228k_quarter_chart_progress/<int:project_id>/<str:project_type>/', views.GetVoltage228KQuarterChartProgress.as_view(), name='get_voltage228k_quarter_chart_progress'),
    # 計算所有季進度報表
    path('get_voltage228k_all_quarter_chart_progress/<int:project_id>/<str:project_type>/', views.GetVoltage228KAllQuarterChartProgress.as_view(), name='get_voltage228k_all_quarter_chart_progress'),
    # 計算所有周進度報表
    path('get_voltage228k_week_chart_progress/<int:project_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetVoltage228KWeekChartProgress.as_view(), name='get_voltage228k_week_chart_progress'),
]