from django.urls import path
from . import views


urlpatterns = [
    # 專案Breeding ProjectBreeding URLs
    path('project-breeding/', views.ProjectBreedingList.as_view(), name='project-breeding-list'),
    path('project-breeding/<int:pk>/', views.ProjectBreedingDetail.as_view(), name='project-breeding-detail'),
    
    # 專案Breeding歷史 ProjectBreedingHistory URLs
    path('project-breeding-history/', views.ProjectBreedingHistoryList.as_view(), name='project-breeding-history-list'),
    path('project-breeding-history/<int:pk>/', views.ProjectBreedingHistoryDetail.as_view(), name='project-breeding-history-detail'),
    
    # 專案Breeding進度(工程版) ProjectBreedingProgress URLs
    path('project-breeding-progress/', views.ProjectBreedingProgressList.as_view(), name='project-breeding-progress-list'),
    path('project-breeding-progress/<int:pk>/', views.ProjectBreedingProgressDetail.as_view(), name='project-breeding-progress-detail'),
    
    # 專案Breeding預期進度(工程版) ProjectBreedingExpectedProgress URLs
    path('project-breeding-expected-progress/', views.ProjectBreedingExpectedProgressList.as_view(), name='project-breeding-expected-progress-list'),
    path('project-breeding-expected-progress/<int:pk>/', views.ProjectBreedingExpectedProgressDetail.as_view(), name='project-breeding-expected-progress-detail'),
    
    # 專案Breeding進度(銀行版) BreedingBankProgress URLs
    path('breeding-bank-progress/', views.BreedingBankProgressList.as_view(), name='breeding-bank-progress-list'),
    path('breeding-bank-progress/<int:pk>/', views.BreedingBankProgressDetail.as_view(), name='breeding-bank-progress-detail'),
    
    # 專案Breeding進度歷史(銀行版) BreedingBankHistory URLs
    path('breeding-bank-history/', views.BreedingBankHistoryList.as_view(), name='breeding-bank-history-list'),
    path('breeding-bank-history/<int:pk>/', views.BreedingBankHistoryDetail.as_view(), name='breeding-bank-history-detail'),
    
    # 專案Breeding預期進度(銀行版) BreedingBankProgressExpected URLs
    path('breeding-bank-progress-expected/', views.BreedingBankProgressExpectedList.as_view(), name='breeding-bank-progress-expected-list'),
    path('breeding-bank-progress-expected/<int:pk>/', views.BreedingBankProgressExpectedDetail.as_view(), name='breeding-bank-progress-expected-detail'),
    
    # 專案Breeding預期進度歷史(銀行版) BreedingBankExpectedHistory URLs
    path('breeding-bank-expected-history/', views.BreedingBankExpectedHistoryList.as_view(), name='breeding-bank-expected-history-list'),
    path('breeding-bank-expected-history/<int:pk>/', views.BreedingBankExpectedHistoryDetail.as_view(), name='breeding-bank-expected-history-detail'),

    # 專案Breeding周
    path('breeding-week/', views.BreedingWeekList.as_view(), name='breeding-week-list'),
    path('breeding-week/<int:pk>/', views.BreedingWeekDetail.as_view(), name='breeding-week-detail'),

    # 計算周進度
    path('get_breeding_progress/<int:loop_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetBreedingProgress.as_view(), name='get_breeding_progress'),
    # 計算所有季進度
    path('get_breeding_all_quarter_progress/<int:loop_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetBreedingAllQuarterProgress.as_view(), name='get_breeding_all_quarter_progress'),
    # 計算所有季進度
    path('get_breeding_quarter_progress/<int:loop_id>/<int:currentPage>/<int:itemsPerPage>/<str:project_type>/', views.GetBreedingQuarterProgress.as_view(), name='get_breeding_quarter_progress'),
    # 計算季進度報表
    path('get_breeding_quarter_chart_progress/<int:loop_id>/<str:project_type>/', views.GetBreedingQuarterChartProgress.as_view(), name='get_breeding_quarter_chart_progress'),

]