from django.urls import path
from .views import ProjectCaseList,PlanList ,ProjectList,ProjectLoopList,PlanDetail,ProjectDetail,ProjectCaseDetail,ProjectLoopDetail,PowerDetail,PowerList,ProjectProportionDetail,ProjectProportionList,ProjectTaskList,ProjectTaskDetail, ProjectLoopByPlan
from . import views

urlpatterns = [
    path('plans/', PlanList.as_view(), name='plan-list'),
    path('plans/<int:pk>/', PlanDetail.as_view(), name='plan-detail'),
    path('power/', PowerList.as_view(), name='power-list'),
    path('power/<int:pk>/', PowerDetail.as_view(), name='power-detail'),
    path('projects/', ProjectList.as_view(), name='project-list'),
    path('projects/<int:pk>/', ProjectDetail.as_view(), name='projects-detail'),
    path('project-cases/', ProjectCaseList.as_view(), name='project-cases'),
    path('project-cases/<int:pk>/', ProjectCaseDetail.as_view(), name='project-cases-detail'),
    path('project-loop/', ProjectLoopList.as_view(), name='project-loop'),
    path('project-loop/<int:pk>/', ProjectLoopDetail.as_view(), name='project-loop-detail'),
    path('project-proportion/', ProjectProportionList.as_view(), name='project-proportion'),
    path('project-proportion/<int:pk>/', ProjectProportionDetail.as_view(), name='project-proportion-detail'),
    path('project-task/', ProjectTaskList.as_view(), name='project-task'),
    path('project-task/<int:pk>/', ProjectTaskDetail.as_view(), name='project-task-detail'),
    path('projects-by-plan/', views.ProjectListByPlan.as_view(), name='project-list-by-plan'),
    path('project-loop-by-project/', views.ProjectLoopByProject.as_view(), name='project-loop-by-project'),
    path('project-loop-by-plan/<int:plan_id>/', views.ProjectLoopByPlan.as_view(), name='project-loop-by-plan'),
]