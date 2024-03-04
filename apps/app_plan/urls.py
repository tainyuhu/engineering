from django.urls import path
from . import views

urlpatterns = [
    # 專案價金比例 ProjectValueRatio URLs
    path('projectvalueratios/', views.ProjectValueRatioList.as_view(), name='projectvalueratio-list'),
    path('projectvalueratios/<int:pk>/', views.ProjectValueRatioDetail.as_view(), name='projectvalueratio-detail'),
    
    # 專案價金比例歷史 ProjectValueRatiosHistory URLs
    path('projectvalueratioshistory/', views.ProjectValueRatiosHistoryList.as_view(), name='projectvalueratioshistory-list'),
    path('projectvalueratioshistory/<int:pk>/', views.ProjectValueRatiosHistoryDetail.as_view(), name='projectvalueratioshistory-detail'),

    # 計畫 Plan URLs
    path('plans/', views.PlanList.as_view(), name='plan-list'),
    path('plans/<int:pk>/', views.PlanDetail.as_view(), name='plan-detail'),

    # 計畫歷史 PlansHistory URLs
    path('planshistory/', views.PlansHistoryList.as_view(), name='planshistory-list'),
    path('planshistory/<int:pk>/', views.PlansHistoryDetail.as_view(), name='planshistory-detail'),

    # 計畫實際進度 PlansProgress URLs
    path('plansprogress/', views.PlansProgressList.as_view(), name='plansprogress-list'),
    path('plansprogress/<int:pk>/', views.PlansProgressDetail.as_view(), name='plansprogress-detail'),

    # 總體計畫 MasterPlan URLs
    path('masterplans/', views.MasterPlanList.as_view(), name='masterplan-list'),
    path('masterplans/<int:pk>/', views.MasterPlanDetail.as_view(), name='masterplan-detail'),

    # 總體計畫歷史 MasterPlansHistory URLs
    path('masterplanshistory/', views.MasterPlansHistoryList.as_view(), name='masterplanshistory-list'),
    path('masterplanshistory/<int:pk>/', views.MasterPlansHistoryDetail.as_view(), name='masterplanshistory-detail'),

    # 總體計畫實際進度 MasterPlanProgress URLs
    path('masterplanprogress/', views.MasterPlanProgressList.as_view(), name='masterplanprogress-list'),
    path('masterplanprogress/<int:pk>/', views.MasterPlanProgressDetail.as_view(), name='masterplanprogress-detail'),

    # 計畫比例 PlanWeight URLs
    path('planweights/', views.PlanWeightList.as_view(), name='planweight-list'),
    path('planweights/<int:pk>/', views.PlanWeightDetail.as_view(), name='planweight-detail'),

    # 計畫關聯 PlanAssociation URLs
    path('planassociations/', views.PlanAssociationList.as_view(), name='planassociation-list'),
    path('planassociations/<int:pk>/', views.PlanAssociationDetail.as_view(), name='planassociation-detail'),

    # 計畫發電量 PlanTotalEnergyProduction URLs
    path('plantotalenergyproductions/', views.PlanTotalEnergyProductionList.as_view(), name='plantotalenergyproduction-list'),
    path('plantotalenergyproductions/<int:pk>/', views.PlanTotalEnergyProductionDetail.as_view(), name='plantotalenergyproduction-detail'),

    # 迴路發電量 ProjectLoopEnergyProduction URLs
    path('projectloopenergyproductions/', views.ProjectLoopEnergyProductionList.as_view(), name='projectloopenergyproduction-list'),
    path('projectloopenergyproductions/<int:pk>/', views.ProjectLoopEnergyProductionDetail.as_view(), name='projectloopenergyproduction-detail'),

    # 案場發電量 ProjectCaseEnergyProduction URLs
    path('projectcaseenergyproductions/', views.ProjectCaseEnergyProductionList.as_view(), name='projectcaseenergyproduction-list'),
    path('projectcaseenergyproductions/<int:pk>/', views.ProjectCaseEnergyProductionDetail.as_view(), name='projectcaseenergyproduction-detail'),

    # 發電量比例系列 EnergyProductionSeries URLs
    path('energyproductionseries/', views.EnergyProductionSeriesList.as_view(), name='energyproductionseries-list'),
    path('energyproductionseries/<int:pk>/', views.EnergyProductionSeriesDetail.as_view(), name='energyproductionseries-detail'),

    # 發電量比例 EnergyProductionRatio URLs
    path('energyproductionratios/', views.EnergyProductionRatioList.as_view(), name='energyproductionratio-list'),
    path('energyproductionratios/<int:pk>/', views.EnergyProductionRatioDetail.as_view(), name='energyproductionratio-detail'),
    # FileProgress
    # 文件連結管理 URLs
    path('fileprogress/', views.FileProgressList.as_view(), name='fileprogress-list'),
    path('fileprogress/<int:pk>/', views.FileProgressDetail.as_view(), name='fileprogress-detail'),
    
]
