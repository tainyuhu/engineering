from django.urls import path
from .views import (
    ProjectList, ProjectDetail, ProjectLoopListByProject, ProjectsProgressList, ProjectsProgressDetail,
    ProjectsProgressExpectedList, ProjectsProgressExpectedDetail, ProjectLoopList, ProjectLoopDetail,
    LoopsHistoryList, LoopsHistoryDetail, LoopsProgressList, LoopsProgressDetail,
    LoopsProgressExpectedList, LoopsProgressExpectedDetail, ProjectCaseList, ProjectCaseDetail,
    CasesHistoryList, CasesHistoryDetail, CasesProgressList, CasesProgressDetail,
    CasesProgressExpectedList, CasesProgressExpectedDetail
)

urlpatterns = [
    
    # 專案 Project URLs
    path('projects/', ProjectList.as_view(), name='project-list'),
    path('projects/<int:pk>/', ProjectDetail.as_view(), name='project-detail'),
    
    # 專案進度 ProjectsProgress URLs
    path('projects-progress/', ProjectsProgressList.as_view(), name='projectsprogress-list'),
    path('projects-progress/<int:pk>/', ProjectsProgressDetail.as_view(), name='projectsprogress-detail'),
    
    # 專案預期進度 ProjectsProgressExpected URLs
    path('projects-progress-expected/', ProjectsProgressExpectedList.as_view(), name='projectsprogressexpected-list'),
    path('projects-progress-expected/<int:pk>/', ProjectsProgressExpectedDetail.as_view(), name='projectsprogressexpected-detail'),
    
    # 專案迴路 ProjectLoop URLs
    path('project-loops/', ProjectLoopList.as_view(), name='projectloop-list'),
    path('project-loops/<int:pk>/', ProjectLoopDetail.as_view(), name='projectloop-detail'),
    
    # 專案迴路歷史 LoopsHistory URLs
    path('loops-history/', LoopsHistoryList.as_view(), name='loopshistory-list'),
    path('loops-history/<int:pk>/', LoopsHistoryDetail.as_view(), name='loopshistory-detail'),
    
    # 專案迴路進度 LoopsProgress URLs
    path('loops-progress/', LoopsProgressList.as_view(), name='loopsprogress-list'),
    path('loops-progress/<int:pk>/', LoopsProgressDetail.as_view(), name='loopsprogress-detail'),
    
    # 專案迴路預期進度 LoopsProgressExpected URLs
    path('loops-progress-expected/', LoopsProgressExpectedList.as_view(), name='loopsprogressexpected-list'),
    path('loops-progress-expected/<int:pk>/', LoopsProgressExpectedDetail.as_view(), name='loopsprogressexpected-detail'),
    
    # 專案案場 ProjectCase URLs
    path('project-cases/', ProjectCaseList.as_view(), name='projectcase-list'),
    path('project-cases/<int:pk>/', ProjectCaseDetail.as_view(), name='projectcase-detail'),
    
    # 專案案場歷史 CasesHistory URLs
    path('cases-history/', CasesHistoryList.as_view(), name='caseshistory-list'),
    path('cases-history/<int:pk>/', CasesHistoryDetail.as_view(), name='caseshistory-detail'),
    
    # 專案案場進度CasesProgress URLs
    path('cases-progress/', CasesProgressList.as_view(), name='casesprogress-list'),
    path('cases-progress/<int:pk>/', CasesProgressDetail.as_view(), name='casesprogress-detail'),
    
    # 專案案場預期進度 CasesProgressExpected URLs
    path('cases-progress-expected/', CasesProgressExpectedList.as_view(), name='casesprogressexpected-list'),
    path('cases-progress-expected/<int:pk>/', CasesProgressExpectedDetail.as_view(), name='casesprogressexpected-detail'),

     path('project-loops-by-project/<int:project_id>/', ProjectLoopListByProject.as_view(), name='project-loops-by-project'),
]
