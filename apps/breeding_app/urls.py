from django.urls import path
from .views import BreedingDetaileditemWeightList, BreedingDetaileditemWeightDetail, BreedingExpectedProgressList, BreedingExpectedProgressDetail, BreedingProgressList, BreedingProgressDetail, BreedingProjectList, BreedingProjectDetail, BreedingSubitemWeightList, BreedingSubitemWeightDetail, BreedingTasksList, BreedingTasksDetail
from . import views

urlpatterns = [
    path('breeding-detaileditem-weight/', BreedingDetaileditemWeightList.as_view(), name='breeding-detaileditem-weight-list'),
    path('breeding-detaileditem-weight/<int:pk>/', BreedingDetaileditemWeightDetail.as_view(), name='breeding-detaileditem-weight-detail'),
    path('breeding-expected-progress/', BreedingExpectedProgressList.as_view(), name='breeding-expected-progress-list'),
    path('breeding-expected-progress/<int:pk>/', BreedingExpectedProgressDetail.as_view(), name='breeding-expected-progress-detail'),
    path('breeding-progress/', BreedingProgressList.as_view(), name='breeding-progress-list'),
    path('breeding-progress/<int:pk>/', BreedingProgressDetail.as_view(), name='breeding-progress-detail'),
    path('breeding-project/', BreedingProjectList.as_view(), name='breeding-project-list'),
    path('breeding-project/<int:pk>/', BreedingProjectDetail.as_view(), name='breeding-project-detail'),
    path('breeding-subitem-weight/', BreedingSubitemWeightList.as_view(), name='breeding-subitem-weight-list'),
    path('breeding-subitem-weight/<int:pk>/', BreedingSubitemWeightDetail.as_view(), name='breeding-subitem-weight-detail'),
    path('breeding-tasks/', BreedingTasksList.as_view(), name='breeding-tasks-list'),
    path('breeding-tasks/<int:pk>/', BreedingTasksDetail.as_view(), name='breeding-tasks-detail'),
]