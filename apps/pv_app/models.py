from django.db import models

# 工程狀態列表
# https://stackoverflow.com/questions/1117564/set-django-integerfield-by-choices-name
class StatusStatement(models.IntegerChoices):
    NOTSTART = 0, '未開工'
    COMPLETED = 1, '完工'
    PROGRESS = 2, '施工中'
    STOP = 3, '停工'

# pv工程
class PVProject(models.Model):
    id = models.BigAutoField(primary_key=True)
    project_code = models.CharField(max_length=255, blank=True, null=True)
    project_name = models.CharField(max_length=255, blank=True, null=True)
    case = models.ForeignKey('plan_app.ProjectCase', models.DO_NOTHING)
    project_personnel = models.CharField(max_length=255, blank=True, null=True)
    project_status = models.IntegerField(blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    actual_start_date = models.DateField(blank=True, null=True)
    actual_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    tasks = models.ForeignKey('PvTasks', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_project'
        ordering = ('id',)

# pv工程子項目細節
class PvDetaileditemWeight(models.Model):
    id = models.BigAutoField(primary_key=True)
    detailed_name = models.CharField(max_length=255)
    detailed_weight = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    subitem = models.ForeignKey('PvSubitemWeight', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_detaileditem_weight'
        ordering = ('id',)

# pv工程進度
class PvExpectedProgress(models.Model):
    id = models.BigAutoField(primary_key=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    actual_start_date = models.DateField(blank=True, null=True)
    actual_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    detailed = models.ForeignKey('PvDetaileditemWeight', models.DO_NOTHING)
    project = models.ForeignKey('PvProject', models.DO_NOTHING)
    subitem = models.ForeignKey('PvSubitemWeight', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_expected_progress'
        ordering = ('id',)

# pv工程預計進度
class PvExpected(models.Model):
    id = models.BigAutoField(primary_key=True)
    start_date = models.DateField(blank=True, null=True)
    completion_date = models.DateField(blank=True, null=True)
    progress = models.FloatField(blank=True, null=True)
    personnel = models.CharField(max_length=50, blank=True, null=True)
    cause = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    expected = models.ForeignKey('PvProject', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_expected'
        ordering = ('id',)

# pv工程實際進度
class PvProgress(models.Model):
    id = models.BigAutoField(primary_key=True)
    start_date = models.DateField(blank=True, null=True)
    completion_date = models.DateField(blank=True, null=True)
    progress = models.FloatField(blank=True, null=True)
    personnel = models.CharField(max_length=50, blank=True, null=True)
    cause = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    expected = models.ForeignKey('PvProject', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_progress'
        ordering = ('id',)

# pv工程銀行進度
class PvBank(models.Model):
    id = models.BigAutoField(primary_key=True)
    start_date = models.DateField(blank=True, null=True)
    completion_date = models.DateField(blank=True, null=True)
    progress = models.FloatField(blank=True, null=True)
    personnel = models.CharField(max_length=50, blank=True, null=True)
    cause = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    expected = models.ForeignKey('PvProject', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_bank'
        ordering = ('id',)

# pv工程子項目
class PvSubitemWeight(models.Model):
    id = models.BigAutoField(primary_key=True)
    subitem_name = models.CharField(max_length=255)
    subitem_weight = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    tasks = models.ForeignKey('PvTasks', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_subitem_weight'
        ordering = ('id',)

# pv工程比例
class PvTasks(models.Model):
    pv_task_id = models.IntegerField(primary_key=True)  # 主键，不自动递增
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'pv_tasks'

# pv工程加權進度
class PvWeeklyProgressSummary(models.Model):
    start_date = models.DateField()
    end_date = models.DateField()
    weighted_progress = models.FloatField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    expected = models.ForeignKey('PvProject', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_weekly_progress_summary'
        ordering = ('id',)

# 系統錯誤LOG
class SystemLog(models.Model):
    id = models.AutoField(primary_key=True)
    create_timestamp = models.DateTimeField(auto_now_add=True)
    error_type = models.CharField(max_length=255, null=True, blank=True)
    error_message = models.TextField(null=True, blank=True)
    additionalInfo = models.TextField(null=True, blank=True)
    user_id = models.IntegerField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'systemlog'
        ordering = ('id',)