from django.urls import path
from . import views

urlpatterns = [
    # 步驟系列 StageSeries URLs
    path('stageseries/', views.StageSeriesList.as_view(), name='stageseries-list'),
    path('stageseries/<int:pk>/', views.StageSeriesDetail.as_view(), name='stageseries-detail'),

    # 步驟 Stage URLs
    path('stage/', views.StageList.as_view(), name='stage-list'),
    path('stage/<int:pk>/', views.StageDetail.as_view(), name='stage-detail'),

    # 電業申辦
    path('projectelectrical/', views.ProjectElectricalList.as_view(), name='projectelectrical-list'),
    path('projectelectrical/<int:pk>/', views.ProjectElectricalDetail.as_view(), name='projectelectrical-detail'),

    # Stages by Series ID URL
    path('stages/series/<int:project_id>/', views.StagesBySeriesView.as_view(), name='stages-by-series'),

    path('electrical-progress/<int:project_id>/', views.ProjectProgressView.as_view(), name='electrical-progress'),
]