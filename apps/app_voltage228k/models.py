from django.db import models
from common.models import BaseModel

# 專案養殖周
class Voltage228KWeek(BaseModel):
    week_id = models.AutoField(primary_key=True)
    year = models.IntegerField(null=True, blank=True)
    quarter = models.IntegerField(null=True, blank=True)
    week = models.IntegerField(null=True, blank=True)
    start_date = models.DateField(null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'voltage228k_week'

#endregion
           
#region 專案養殖
# 專案養殖
class ProjectVoltage228K(BaseModel):
    voltage228k_id = models.AutoField(primary_key=True)
    voltage228k_name = models.CharField(max_length=255)
    planned_start_date = models.DateField()
    planned_end_date = models.DateField()
    actual_start_date = models.DateField(null=True, blank=True)
    actual_end_date = models.DateField(null=True, blank=True)
    construction_status = models.CharField(max_length=255)
    series_id = models.ForeignKey('app_pv.Series', on_delete=models.CASCADE, db_column='series_id')
    case_id = models.ForeignKey('app_project.ProjectCase', on_delete=models.CASCADE, db_column='case_id')
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'project_voltage228k'

# 專案Voltage228K歷史
class ProjectVoltage228KHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('ProjectVoltage228K', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'project_voltage228k_history'

# 專案Voltage228K實際進度(工程版)
class ProjectVoltage228KProgress(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    voltage228k_id = models.ForeignKey(ProjectVoltage228K, on_delete=models.CASCADE, db_column='voltage228k_id')
    series_id = models.ForeignKey('app_pv.Series', on_delete=models.CASCADE, db_column='series_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    supervisor = models.CharField(max_length=255)
    non_construction_reason = models.TextField()
    progress_calculation_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    voltage228k_week_id = models.ForeignKey(Voltage228KWeek, on_delete=models.CASCADE, db_column='voltage228k_week_id')

    class Meta:
        managed = False
        db_table = 'voltage228k_progress'

# 專案Voltage228K預期進度(工程版)
class ProjectVoltage228KExpectedProgress(BaseModel):
    expected_progress_id = models.AutoField(primary_key=True)
    voltage228k_id = models.ForeignKey('ProjectVoltage228K', on_delete=models.CASCADE, db_column='voltage228k_id')
    parameter_id = models.ForeignKey('app_pv.LogisticParameters', on_delete=models.CASCADE, db_column='parameter_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    calculation_date = models.DateField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    voltage228k_week_id = models.ForeignKey(Voltage228KWeek, on_delete=models.CASCADE, db_column='voltage228k_week_id')

    class Meta:
        managed = False
        db_table = 'voltage228k_expected_progress'

# 專案Voltage228K實際進度(銀行版)
class Voltage228KBankProgress(BaseModel):
    voltage228k_bank_id = models.AutoField(primary_key=True)
    voltage228k_id = models.ForeignKey('ProjectVoltage228K', on_delete=models.CASCADE, db_column='voltage228k_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    voltage228k_week_id = models.ForeignKey(Voltage228KWeek, on_delete=models.CASCADE, db_column='voltage228k_week_id')

    class Meta:
        managed = False
        db_table = 'voltage228kbank_progress'

# 專案Voltage228K實際進度(銀行版)歷史
class Voltage228KBankHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('Voltage228KBankProgress', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'voltage228k_bank_history'

# 專案Voltage228K預期進度(銀行版)
class Voltage228KBankProgressExpected(BaseModel):
    voltage228k_bank_expected_id = models.AutoField(primary_key=True)
    voltage228k_id = models.ForeignKey('ProjectVoltage228K', on_delete=models.CASCADE, db_column='voltage228k_id')
    parameter_id = models.ForeignKey('app_pv.LogisticParameters', on_delete=models.CASCADE, db_column='parameter_id')
    is_parameter_based = models.BooleanField(default=True)
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    voltage228k_week_id = models.ForeignKey('Voltage228KWeek', on_delete=models.CASCADE, db_column='voltage228k_week_id')
   

    class Meta:
        managed = False
        db_table = 'voltage228kbank_progress_expected'

# 專案Voltage228K預期進度(銀行版)歷史
class Voltage228KBankExpectedHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('Voltage228KBankProgressExpected', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'voltage228k_bank_expected_history'

#endregion