from django.db import models
from common.models import BaseModel

#region 專案價金比例
#專案價金比例
class ProjectValueRatio(BaseModel):
    ratio_id = models.AutoField(primary_key=True)
    plan_id = models.ForeignKey('Plan', on_delete=models.CASCADE, db_column='plan_id')
    project_id = models.IntegerField()
    percentage = models.DecimalField(max_digits=5, decimal_places=2)
    description = models.TextField()
    effective_date = models.DateField()
    created_by = models.CharField(max_length=255)
    created_at = models.DateField(auto_now_add=True)
    last_update = models.DateField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'project_value_ratios' 

#專案價金比例歷史
class ProjectValueRatiosHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('ProjectValueRatio', on_delete=models.CASCADE, db_column='ratio_id')
    changed_column = models.CharField(max_length=255)
    previous_value = models.TextField()
    new_value = models.TextField()
    change_type = models.CharField(max_length=50)
    change_time = models.DateTimeField(auto_now_add=True)
    changed_by = models.CharField(max_length=255)
    change_reason = models.TextField()
    change_description = models.TextField()

    class Meta:
        managed = False
        db_table = 'project_value_ratios_history'    
#endregion
        
#region 計畫
# 計畫
class Plan(BaseModel):
    plan_id = models.AutoField(primary_key=True)
    plan_name = models.CharField(max_length=255)
    planned_start_date = models.DateField(null=True, blank=True)
    planned_end_date = models.DateField(null=True, blank=True)
    actual_start_date = models.DateField(null=True, blank=True)
    actual_end_date = models.DateField(null=True, blank=True)
    plan_manager = models.CharField(max_length=255,null=True, blank=True)
    plan_status = models.CharField(max_length=255,null=True, blank=True)
    plan_description = models.TextField(null=True, blank=True)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'plans'

# 計畫歷史
class PlansHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('Plan', on_delete=models.CASCADE, db_column='plan_id')
    changed_column = models.CharField(max_length=255)
    previous_value = models.TextField()
    new_value = models.TextField()
    change_type = models.CharField(max_length=50)
    change_time = models.DateTimeField(auto_now_add=True)
    changed_by = models.CharField(max_length=255)
    change_reason = models.TextField()
    change_description = models.TextField()

    class Meta:
        managed = False
        db_table = 'plans_history'

# 計畫實際進度
class PlansProgress(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    plan_id = models.ForeignKey('Plan', on_delete=models.CASCADE, db_column='plan_id')
    ratio_id = models.ForeignKey('ProjectValueRatio', on_delete=models.CASCADE, db_column='ratio_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    progress_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'plans_progress'
#endregion

#region 統體計畫
# 總體計畫
class MasterPlan(BaseModel):
    master_plan_id = models.AutoField(primary_key=True)
    master_plan_name = models.CharField(max_length=255)
    planned_start_date = models.DateField()
    planned_end_date = models.DateField()
    actual_start_date = models.DateField(null=True, blank=True)
    actual_end_date = models.DateField(null=True, blank=True)
    master_plan_manager = models.CharField(max_length=255)
    master_plan_status = models.CharField(max_length=255)
    master_plan_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'master_plans'

# 總體計畫歷史
class MasterPlansHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('MasterPlan', on_delete=models.CASCADE, db_column='master_plan_id')
    changed_column = models.CharField(max_length=255)
    previous_value = models.TextField()
    new_value = models.TextField()
    change_type = models.CharField(max_length=50)
    change_time = models.DateTimeField(auto_now_add=True)
    changed_by = models.CharField(max_length=255)
    change_reason = models.TextField()
    change_description = models.TextField()

    class Meta:
        managed = False
        db_table = 'master_plans_history'

# 總體計畫實際進度
class MasterPlanProgress(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    master_plan_id = models.ForeignKey('MasterPlan', on_delete=models.CASCADE, db_column='master_plan_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    progress_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'master_plan_progress'

# 計畫比例
class PlanWeight(BaseModel):
    weight_id = models.AutoField(primary_key=True)
    project_id = models.ForeignKey('Plan', on_delete=models.CASCADE, db_column='plan_id')
    weight = models.DecimalField(max_digits=5, decimal_places=2)
    effective_date = models.DateField()
    adjustment_reason = models.TextField()

    class Meta:
        managed = False
        db_table = 'plan_weights'

# 計畫關聯
class PlanAssociation(BaseModel):
    association_id = models.AutoField(primary_key=True)
    master_plan_id = models.ForeignKey('MasterPlan', on_delete=models.CASCADE, db_column='master_plan_id')
    weight_id = models.ForeignKey('PlanWeight', on_delete=models.CASCADE, db_column='weight_id')
    creation_date = models.DateField()
    notes = models.TextField()

    class Meta:
        managed = False
        db_table = 'plan_associations'
#endregion

#region 發電量
# 計畫發電量
class PlanTotalEnergyProduction(BaseModel):
    plan_total_energy_id = models.AutoField(primary_key=True)
    plan_id = models.ForeignKey('Plan', on_delete=models.CASCADE, db_column='plan_id')
    total_energy_production = models.DecimalField(max_digits=10, decimal_places=2)
    unit = models.CharField(max_length=50)
    effective_date = models.DateField()
    created_by = models.CharField(max_length=255)
    updated_by = models.CharField(max_length=255)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'plan_total_energy_production'

# 迴路發電量
class ProjectLoopEnergyProduction(BaseModel):
    loop_energy_id = models.AutoField(primary_key=True)
    loop_id = models.ForeignKey('app_project.ProjectLoop', on_delete=models.CASCADE, db_column='loop_id')
    energy_production = models.DecimalField(max_digits=10, decimal_places=2)
    unit = models.CharField(max_length=50)
    effective_date = models.DateField()
    created_by = models.CharField(max_length=255)
    updated_by = models.CharField(max_length=255)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'project_loop_energy_production'

# 案場發電量
class ProjectCaseEnergyProduction(BaseModel):
    case_energy_id = models.AutoField(primary_key=True)
    case_id = models.ForeignKey('app_project.ProjectCase', on_delete=models.CASCADE, db_column='case_id')
    energy_production = models.DecimalField(max_digits=10, decimal_places=2)
    unit = models.CharField(max_length=50)
    effective_date = models.DateField()
    created_by = models.CharField(max_length=255)
    updated_by = models.CharField(max_length=255)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'project_case_energy_production'

# 發電量比例系列
class EnergyProductionSeries(BaseModel):
    series_id = models.AutoField(primary_key=True)
    series_name = models.CharField(max_length=255)
    description = models.TextField()
    created_by = models.CharField(max_length=255)
    updated_by = models.CharField(max_length=255)
    create_at = models.DateTimeField(auto_now_add=True)
    last_update = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'energy_production_series'

# 發電量比例
class EnergyProductionRatio(BaseModel):
    ratio_id = models.AutoField(primary_key=True)
    series_id = models.ForeignKey('EnergyProductionSeries', on_delete=models.CASCADE, db_column='series_id')
    plan_total_energy_id = models.ForeignKey('PlanTotalEnergyProduction', on_delete=models.CASCADE, db_column='plan_total_energy_id', null=True, blank=True)
    loop_energy_id = models.ForeignKey('ProjectLoopEnergyProduction', on_delete=models.CASCADE, db_column='loop_energy_id', null=True, blank=True)
    case_energy_id = models.ForeignKey('ProjectCaseEnergyProduction', on_delete=models.CASCADE, db_column='case_energy_id', null=True, blank=True)
    ratio = models.DecimalField(max_digits=10, decimal_places=2)
    effective_date = models.DateField()
    created_by = models.CharField(max_length=255)
    updated_by = models.CharField(max_length=255)
    last_update = models.DateField()
    create_at = models.DateField()

    class Meta:
        managed = False
        db_table = 'energy_production_ratio'
#endregion

#region 文件管理
class FileProgress(BaseModel):
    file_name = models.CharField(max_length=255, blank=False, null=False)
    file_link = models.CharField(max_length=255, blank=False, null=False)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    update_description = models.TextField(null=True, blank=True)
    routeName = models.TextField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'file_progress'
#endregion
        
#region 會議記錄
class MeetingRecord(BaseModel):
    file_name = models.CharField(max_length=255, blank=False, null=False)
    file_link = models.CharField(max_length=255, blank=False, null=False)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    update_description = models.TextField(null=True, blank=True)
    routeName = models.TextField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'meeting_record'
#endregion






