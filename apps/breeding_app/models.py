from django.db import models

# 養殖工程子項目細節
class BreedingDetaileditemWeight(models.Model):
    id = models.BigAutoField(primary_key=True)
    detailed_name = models.CharField(max_length=255)
    detailed_weight = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    subitem = models.ForeignKey('BreedingSubitemWeight', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'breeding_detaileditem_weight'
        ordering = ('id',)

# 養殖工程預計進度
class BreedingExpectedProgress(models.Model):
    id = models.BigAutoField(primary_key=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    actual_start_date = models.DateField(blank=True, null=True)
    actual_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    detailed = models.ForeignKey(BreedingDetaileditemWeight, models.DO_NOTHING)
    project = models.ForeignKey('BreedingProject', models.DO_NOTHING)
    subitem = models.ForeignKey('BreedingSubitemWeight', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'breeding_expected_progress'
        ordering = ('id',)

# 養殖工程實際進度
class BreedingProgress(models.Model):
    id = models.BigAutoField(primary_key=True)
    start_date = models.DateField(blank=True, null=True)
    completion_date = models.DateField(blank=True, null=True)
    progress = models.FloatField(blank=True, null=True)
    personnel = models.CharField(max_length=50, blank=True, null=True)
    cause = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    expected = models.ForeignKey('BreedingProject', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'breeding_progress'
        ordering = ('id',)

# 養殖工程
class BreedingProject(models.Model):
    id = models.BigAutoField(primary_key=True)
    project_code = models.CharField(max_length=255,blank=True, null=True)
    project_name = models.CharField(max_length=255,blank=True, null=True)
    bank_code = models.CharField(max_length=255,blank=True, null=True)
    project_status = models.IntegerField()
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    actual_start_date = models.DateField(blank=True, null=True)
    actual_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    tasks = models.ForeignKey('BreedingTasks', models.DO_NOTHING)
    case = models.ForeignKey('plan_app.ProjectCase', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'breeding_project'
        ordering = ('id',)

# 養殖工程子項目
class BreedingSubitemWeight(models.Model):
    id = models.BigAutoField(primary_key=True)
    subitem_name = models.CharField(max_length=255)
    subitem_weight = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    tasks = models.ForeignKey('BreedingTasks', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'breeding_subitem_weight'
        ordering = ('id',)

# 養殖工程項目比例
class BreedingTasks(models.Model):
    breeding_task_id = models.IntegerField(primary_key=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'breeding_tasks'

