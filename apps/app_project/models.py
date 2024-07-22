from django.db import models
from common.models import BaseModel

#region 比例
# 比例
class ProportionBlocks(BaseModel):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    parent_id = models.IntegerField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'proportionblocks'

# 比例歷史
class ProportionHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    block_id = models.ForeignKey('ProportionBlocks', on_delete=models.CASCADE, db_column='block_id')
    quantity = models.FloatField()
    percentage = models.FloatField()
    effective_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'proportionhistory'
#endregion

#region 專案
# 專案週
class ProjectWeek(BaseModel):
    week_id = models.AutoField(primary_key=True)
    year = models.IntegerField(blank=True, null=True)
    quarter = models.IntegerField(blank=True, null=True)
    week = models.IntegerField(blank=True, null=True)
    start_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'projects_week'

# 專案
class Project(BaseModel):
    project_id = models.AutoField(primary_key=True)
    plan_id = models.ForeignKey('app_plan.Plan', on_delete=models.CASCADE, db_column='plan_id')
    project_name = models.CharField(max_length=255)
    plannedstart_date = models.DateField()
    plannedend_date = models.DateField()
    actualstart_date = models.DateField(null=True, blank=True)
    actualend_date = models.DateField(null=True, blank=True)
    construction_status = models.FloatField()
    notes = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    block_id = models.ForeignKey('ProportionBlocks', on_delete=models.CASCADE, db_column='block_id')

    class Meta:
        managed = False
        db_table = 'projects'

# 專案進度
class ProjectsProgress(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    project_id = models.ForeignKey('Project', on_delete=models.CASCADE, db_column='project_id')
    ratio_id = models.ForeignKey('app_plan.ProjectValueRatio', on_delete=models.CASCADE, db_column='ratio_id')
    progress_percentage = models.FloatField()
    progress_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    project_week_id = models.ForeignKey('ProjectWeek', on_delete=models.CASCADE, db_column='project_week_id')

    class Meta:
        managed = False
        db_table = 'projects_progress'

# 專案預期進度
class ProjectsProgressExpected(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    project_id = models.ForeignKey('Project', on_delete=models.CASCADE, db_column='project_id')
    progress_percentage = models.FloatField()
    progress_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    project_week_id = models.ForeignKey('ProjectWeek', on_delete=models.CASCADE, db_column='project_week_id')

    class Meta:
        managed = False
        db_table = 'projects_progress_expected'

#endregion
        
#region 專案迴路
# 專案迴路
class ProjectLoop(BaseModel):
    loop_id = models.AutoField(primary_key=True)
    project_id = models.ForeignKey('Project', on_delete=models.CASCADE, db_column='project_id')
    loop_name = models.CharField(max_length=255)
    plannedstart_date = models.DateField()
    plannedend_date = models.DateField()
    actualstart_date = models.DateField(null=True, blank=True)
    actualend_date = models.DateField(null=True, blank=True)
    construction_status = models.CharField(max_length=255)
    planned_parallel_date = models.DateField(null=True, blank=True)
    actual_parallel_date = models.DateField(null=True, blank=True)
    parallel_status = models.CharField(max_length=255)
    notes = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    block_id = models.ForeignKey('ProportionBlocks', on_delete=models.CASCADE, db_column='block_id')

    class Meta:
        managed = False
        db_table = 'project_loops'

# 專案迴路歷史
class LoopsHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('ProjectLoop', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'loops_history'

# 專案迴路週
class LoopWeek(BaseModel):
    week_id = models.AutoField(primary_key=True)
    year = models.IntegerField(blank=True, null=True)
    quarter = models.IntegerField(blank=True, null=True)
    week = models.IntegerField(blank=True, null=True)
    start_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'loop_week'

# 專案迴路進度
class LoopsProgress(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    loop_id = models.ForeignKey('ProjectLoop', on_delete=models.CASCADE, db_column='loop_id')
    series_id = models.ForeignKey('app_plan.EnergyProductionSeries', on_delete=models.CASCADE, db_column='series_id')
    progress_percentage = models.FloatField()
    pv_progress_percentage = models.FloatField(null=True, blank=True)
    breeding_progress_percentage = models.FloatField(null=True, blank=True)
    progress_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    loop_week_id = models.ForeignKey('LoopWeek', on_delete=models.CASCADE, db_column='loop_week_id')

    class Meta:
        managed = False
        db_table = 'loops_progress'

# 專案迴路預計進度
class LoopsProgressExpected(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    loop_id = models.ForeignKey('ProjectLoop', on_delete=models.CASCADE, db_column='loop_id')
    progress_percentage = models.FloatField()
    pv_progress_percentage = models.FloatField(null=True, blank=True)
    breeding_progress_percentage = models.FloatField(null=True, blank=True)
    progress_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    loop_week_id = models.ForeignKey('LoopWeek', on_delete=models.CASCADE, db_column='loop_week_id')
    
    class Meta:
        managed = False
        db_table = 'loops_progress_expected'
#endregion

#region 專案案場
# 專案案場
class ProjectCase(BaseModel):
    case_id = models.AutoField(primary_key=True)
    loop_id = models.ForeignKey('ProjectLoop', on_delete=models.CASCADE, db_column='loop_id')
    cases_name = models.CharField(max_length=255)
    longitude = models.DecimalField(max_digits=10, decimal_places=7)
    latitude = models.DecimalField(max_digits=10, decimal_places=7)
    address = models.TextField()
    plannedstart_date = models.DateField()
    plannedend_date = models.DateField()
    actualstart_date = models.DateField(null=True, blank=True)
    actualend_date = models.DateField(null=True, blank=True)
    construction_status = models.CharField(max_length=255)
    notes = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    block_id = models.ForeignKey('ProportionBlocks', on_delete=models.CASCADE, db_column='block_id')

    class Meta:
        managed = False
        db_table = 'project_cases'

# 專案案場歷史
class CasesHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('ProjectCase', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'cases_history'

# 專案案場進度
class CasesProgress(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    case_id = models.ForeignKey('ProjectCase', on_delete=models.CASCADE, db_column='case_id')
    series_id = models.ForeignKey('app_plan.EnergyProductionSeries', on_delete=models.CASCADE, db_column='series_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    progress_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'cases_progress'

# 專案案場預期進度
class CasesProgressExpected(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    case_id = models.ForeignKey('ProjectCase', on_delete=models.CASCADE, db_column='case_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    progress_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'cases_progress_expected'

#endregion
        
