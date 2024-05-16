from django.db import models
from common.models import BaseModel

# region 步驟系列
# 步驟系列
class StageSeries(BaseModel):
    series_id = models.AutoField(primary_key=True)
    series_name = models.CharField(max_length=255, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'stages_series' 

# 步驟
class Stage(BaseModel):
    stage_id = models.AutoField(primary_key=True)
    stage_name = models.CharField(max_length=255)
    completion_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    updated_at = models.DateTimeField(auto_now=True)
    step_order = models.IntegerField()
    series = models.ForeignKey('StageSeries', on_delete=models.CASCADE, db_column='series_id')
    todolist = models.TextField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'stages' 
    
# endregion
    
# region 電業申辦
# 電業申辦
class ProjectElectrical(BaseModel):
    electrical_id = models.AutoField(primary_key=True)
    electrical_name = models.CharField(max_length=255, null=True, blank=True)
    planned_start_date = models.DateField(null=True, blank=True)
    planned_end_date = models.DateField(null=True, blank=True)
    actual_start_date = models.DateField(null=True, blank=True)
    actual_end_date = models.DateField(null=True, blank=True)
    construction_status = models.IntegerField(null=True, blank=True)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    project_id = models.IntegerField(null=True, blank=True)
    series_id = models.ForeignKey('StageSeries', on_delete=models.CASCADE, db_column='series_id')

    class Meta:
        managed = False
        db_table = 'project_electrical'

# 電業申辦實際進度
class ElectricalProgress(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    electrical_id = models.IntegerField(null=True, blank=True)
    progress_percentage = models.FloatField(null=True, blank=True)
    supervisor = models.CharField(max_length=255, null=True, blank=True)
    non_construction_reason = models.TextField(null=True, blank=True)
    progress_calculation_description = models.TextField(null=True, blank=True)
    done_date = models.DateField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    electrical_week_id = models.IntegerField(null=True, blank=True)
    stage_id = models.ForeignKey('Stage', on_delete=models.CASCADE, db_column='stage_id')

    class Meta:
        managed = False
        db_table = 'electrical_progress'
# endregion