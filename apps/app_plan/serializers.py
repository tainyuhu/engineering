from rest_framework import serializers
from .models import (
    ProjectValueRatio, ProjectValueRatiosHistory, Plan, PlansHistory,
    PlansProgress, MasterPlan, MasterPlansHistory, MasterPlanProgress,
    PlanWeight, PlanAssociation, PlanTotalEnergyProduction,
    ProjectLoopEnergyProduction, ProjectCaseEnergyProduction,
    EnergyProductionSeries, EnergyProductionRatio, FileProgress
)

# 專案價金比例
class ProjectValueRatioSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectValueRatio
        fields = '__all__'

# 專案價金比例歷史
class ProjectValueRatiosHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectValueRatiosHistory
        fields = '__all__'

# 計畫
class PlanSerializer(serializers.ModelSerializer):
    class Meta:
        model = Plan
        fields = '__all__'

# 計畫歷史
class PlansHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = PlansHistory
        fields = '__all__'

# 計畫實際進度
class PlansProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = PlansProgress
        fields = '__all__'

# 總體計畫
class MasterPlanSerializer(serializers.ModelSerializer):
    class Meta:
        model = MasterPlan
        fields = '__all__'

# 總體計畫歷史
class MasterPlansHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = MasterPlansHistory
        fields = '__all__'

# 總體計畫實際進度
class MasterPlanProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = MasterPlanProgress
        fields = '__all__'

# 計畫比例
class PlanWeightSerializer(serializers.ModelSerializer):
    class Meta:
        model = PlanWeight
        fields = '__all__'

# 計畫關聯
class PlanAssociationSerializer(serializers.ModelSerializer):
    class Meta:
        model = PlanAssociation
        fields = '__all__'

# 計畫發電量
class PlanTotalEnergyProductionSerializer(serializers.ModelSerializer):
    class Meta:
        model = PlanTotalEnergyProduction
        fields = '__all__'

# 迴路發電量
class ProjectLoopEnergyProductionSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectLoopEnergyProduction
        fields = '__all__'

# 案場發電量
class ProjectCaseEnergyProductionSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectCaseEnergyProduction
        fields = '__all__'

# 發電量比例系列
class EnergyProductionSeriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = EnergyProductionSeries
        fields = '__all__'

# 發電量比例
class EnergyProductionRatioSerializer(serializers.ModelSerializer):
    class Meta:
        model = EnergyProductionRatio
        fields = '__all__'

# 文件連結管理
class FileProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = FileProgress
        fields = '__all__'

