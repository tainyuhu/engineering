from django.db import models
from common.models import BaseModel

# 專案養殖周
class BreedingWeek(BaseModel):
    week_id = models.AutoField(primary_key=True)
    year = models.IntegerField(null=True, blank=True)
    quarter = models.IntegerField(null=True, blank=True)
    week = models.IntegerField(null=True, blank=True)
    start_date = models.DateField(null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'breeding_week'

#endregion
           
#region 專案養殖
# 專案養殖
class ProjectBreeding(BaseModel):
    breeding_id = models.AutoField(primary_key=True)
    breeding_name = models.CharField(max_length=255)
    planned_start_date = models.DateField()
    planned_end_date = models.DateField()
    actual_start_date = models.DateField(null=True, blank=True)
    actual_end_date = models.DateField(null=True, blank=True)
    construction_status = models.IntegerField()
    series_id = models.ForeignKey('app_pv.Series', on_delete=models.CASCADE, db_column='series_id')
    case_id = models.ForeignKey('app_project.ProjectCase', on_delete=models.CASCADE, db_column='case_id')
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'project_breeding'

# 專案Breeding歷史
class ProjectBreedingHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('ProjectBreeding', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'project_breeding_history'

# 專案Breeding實際進度(工程版)
class ProjectBreedingProgress(BaseModel):
    progress_id = models.AutoField(primary_key=True)
    breeding_id = models.ForeignKey(ProjectBreeding, on_delete=models.CASCADE, db_column='breeding_id')
    series_id = models.ForeignKey('app_pv.Series', on_delete=models.CASCADE, db_column='series_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    supervisor = models.CharField(max_length=255)
    non_construction_reason = models.TextField()
    progress_calculation_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    breeding_week_id = models.ForeignKey(BreedingWeek, on_delete=models.CASCADE, db_column='breeding_week_id')

    class Meta:
        managed = False
        db_table = 'breeding_progress'

# 專案Breeding預期進度(工程版)
class ProjectBreedingExpectedProgress(BaseModel):
    expected_progress_id = models.AutoField(primary_key=True)
    breeding_id = models.ForeignKey('ProjectBreeding', on_delete=models.CASCADE, db_column='breeding_id')
    parameter_id = models.ForeignKey('app_pv.LogisticParameters', on_delete=models.CASCADE, db_column='parameter_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    calculation_date = models.DateField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    breeding_week_id = models.ForeignKey(BreedingWeek, on_delete=models.CASCADE, db_column='breeding_week_id')

    class Meta:
        managed = False
        db_table = 'breeding_expected_progress'

# 專案Breeding實際進度(銀行版)
class BreedingBankProgress(BaseModel):
    breeding_bank_id = models.AutoField(primary_key=True)
    breeding_id = models.ForeignKey('ProjectBreeding', on_delete=models.CASCADE, db_column='breeding_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    breeding_week_id = models.ForeignKey(BreedingWeek, on_delete=models.CASCADE, db_column='breeding_week_id')

    class Meta:
        managed = False
        db_table = 'breedingbank_progress'

# 專案Breeding實際進度(銀行版)歷史
class BreedingBankHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('BreedingBankProgress', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'breeding_bank_history'

# 專案Breeding預期進度(銀行版)
class BreedingBankProgressExpected(BaseModel):
    breeding_bank_expected_id = models.AutoField(primary_key=True)
    breeding_id = models.ForeignKey('ProjectBreeding', on_delete=models.CASCADE, db_column='breeding_id')
    parameter_id = models.ForeignKey('app_pv.LogisticParameters', on_delete=models.CASCADE, db_column='parameter_id')
    is_parameter_based = models.BooleanField(default=True)
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    breeding_week_id = models.ForeignKey('BreedingWeek', on_delete=models.CASCADE, db_column='breeding_week_id')
   

    class Meta:
        managed = False
        db_table = 'breedingbank_progress_expected'

# 專案Breeding預期進度(銀行版)歷史
class BreedingBankExpectedHistory(BaseModel):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('BreedingBankProgressExpected', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'breeding_bank_expected_history'

#endregion