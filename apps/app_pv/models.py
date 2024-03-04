from django.db import models

#region 工程價金系列
# 工程價金系列

class Series(models.Model):
    series_id = models.AutoField(primary_key=True)
    series_name = models.CharField(max_length=255)
    description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'series'

# 工程價金系列歷史
class SeriesHistory(models.Model):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('Series', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'series_history'

# 大價金比例資料
class MajorItemPercentage(models.Model):
    major_item_id = models.AutoField(primary_key=True)
    series_id = models.ForeignKey('Series', on_delete=models.CASCADE, db_column='series_id')
    item_name = models.CharField(max_length=255)
    percentage = models.DecimalField(max_digits=5, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'major_item_percentage'

# 大價金比例資料歷史
class MajorItemPercentageHistory(models.Model):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('MajorItemPercentage', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'major_item_percentage_history'

# 小價金比例資料
class SubItemPercentage(models.Model):
    sub_item_id = models.AutoField(primary_key=True)
    major_item_id = models.ForeignKey('MajorItemPercentage', on_delete=models.CASCADE, db_column='major_item_id')
    item_name = models.CharField(max_length=255)
    percentage = models.DecimalField(max_digits=5, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'sub_item_percentage'

# 小價金比例資料歷史
class SubItemPercentageHistory(models.Model):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('SubItemPercentage', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'sub_item_percentage_history'
#endregion

#region 邏輯斯蒂方程參數
#  邏輯斯蒂方程參數
class LogisticParameters(models.Model):
    parameter_id = models.AutoField(primary_key=True)
    version = models.DecimalField(max_digits=10, decimal_places=2)
    max_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    midpoint_time = models.DecimalField(max_digits=10, decimal_places=2)
    growth_rate = models.DecimalField(max_digits=10, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'logistic_parameters'

#  邏輯斯蒂方程參數歷史
class LogisticParametersHistory(models.Model):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey(LogisticParameters, on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'logistic_parameters_history'
#endregion
        
#region 專案PV
# 專案PV
class ProjectPV(models.Model):
    pv_id = models.AutoField(primary_key=True)
    pv_name = models.CharField(max_length=255)
    planned_start_date = models.DateField()
    planned_end_date = models.DateField()
    actual_start_date = models.DateField(null=True, blank=True)
    actual_end_date = models.DateField(null=True, blank=True)
    construction_status = models.CharField(max_length=255)
    series_id = models.ForeignKey('Series', on_delete=models.CASCADE, db_column='series_id')
    case_id = models.ForeignKey('app_project.ProjectCase', on_delete=models.CASCADE, db_column='case_id')
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'project_pv'

# 專案PV歷史
class ProjectPVHistory(models.Model):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('ProjectPV', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'project_pv_history'

# 專案PV實際進度(工程版)
class ProjectPVProgress(models.Model):
    progress_id = models.AutoField(primary_key=True)
    pv_id = models.ForeignKey(ProjectPV, on_delete=models.CASCADE, db_column='pv_id')
    series_id = models.ForeignKey('Series', on_delete=models.CASCADE, db_column='series_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    supervisor = models.CharField(max_length=255)
    non_construction_reason = models.TextField()
    progress_calculation_description = models.TextField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    start_date = models.DateField(null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'project_pv_progress'

# 專案PV預期進度(工程版)
class ProjectPVExpectedProgress(models.Model):
    expected_progress_id = models.AutoField(primary_key=True)
    pv_id = models.ForeignKey('ProjectPV', on_delete=models.CASCADE, db_column='pv_id')
    parameter_id = models.ForeignKey('LogisticParameters', on_delete=models.CASCADE, db_column='parameter_id')
    expected_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    calculation_date = models.DateField()
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    start_date = models.DateField(null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'project_pv_expected_progress'

# 專案PV實際進度(銀行版)
class PVBankProgress(models.Model):
    pv_bank_id = models.AutoField(primary_key=True)
    pv_id = models.ForeignKey('ProjectPV', on_delete=models.CASCADE, db_column='pv_id')
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    start_date = models.DateField(null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'pv_bank_progress'

# 專案PV實際進度(銀行版)歷史
class PVBankHistory(models.Model):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('PVBankProgress', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'pv_bank_history'

# 專案PV預期進度(銀行版)
class PVBankProgressExpected(models.Model):
    pv_bank_expected_id = models.AutoField(primary_key=True)
    pv_id = models.ForeignKey('ProjectPV', on_delete=models.CASCADE, db_column='pv_id')
    parameter_id = models.ForeignKey('LogisticParameters', on_delete=models.CASCADE, db_column='parameter_id')
    is_parameter_based = models.BooleanField(default=True)
    progress_percentage = models.DecimalField(max_digits=5, decimal_places=2)
    last_update = models.DateTimeField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
    start_date = models.DateField(null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)    

    class Meta:
        managed = False
        db_table = 'pv_bank_progress_expected'

# 專案PV預期進度(銀行版)歷史
class PVBankExpectedHistory(models.Model):
    history_id = models.AutoField(primary_key=True)
    reference_id = models.ForeignKey('PVBankProgressExpected', on_delete=models.CASCADE, db_column='reference_id')
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
        db_table = 'pv_bank_expected_history'

#endregion
