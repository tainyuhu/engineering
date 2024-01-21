from django.db import models

class Plan(models.Model):
    plan_name = models.CharField(max_length=255,blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'plan'
        ordering = ('id',)

class Power(models.Model):
    power = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    project = models.ForeignKey('Project', models.DO_NOTHING, blank=True, null=True)
    loop = models.ForeignKey('ProjectLoop', models.DO_NOTHING, blank=True, null=True)
    case = models.ForeignKey('ProjectCase', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'power'
        ordering = ('id',)

class Project(models.Model):
    projcet_name = models.CharField(max_length=255,blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    progress = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True,blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True,blank=True, null=True)
    plan = models.ForeignKey(Plan, models.DO_NOTHING,blank=True, null=True)
    task = models.ForeignKey('ProjectTask', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'project'
        ordering = ('id',) 

class ProjectCase(models.Model):
    case_name = models.CharField(max_length=255,blank=True, null=True)
    case_code = models.CharField(max_length=255,blank=True, null=True)
    pv = models.IntegerField(blank=True, null=True)
    breeding = models.IntegerField(blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    latitude = models.FloatField(blank=True, null=True)
    longitude = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True,blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True,blank=True, null=True)
    loop = models.ForeignKey('ProjectLoop', models.DO_NOTHING,blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'project_case'
        ordering = ('id',)

class ProjectLoop(models.Model):
    loop_name = models.CharField(max_length=255,blank=True, null=True)
    bank_code = models.CharField(max_length=255,blank=True, null=True)
    project_code = models.CharField(max_length=255,blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True,blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True,blank=True, null=True)
    project = models.ForeignKey(Project, models.DO_NOTHING,blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'project_loop'
        ordering = ('id',)

class ProjectProportion(models.Model):
    proportion = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True,blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True,blank=True, null=True)
    task = models.ForeignKey('ProjectTask', models.DO_NOTHING)
    project = models.ForeignKey(Project, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'project_proportion'
        ordering = ('id',)


class ProjectTask(models.Model):
    project_task_id = models.IntegerField(primary_key=True)
    created_at = models.DateTimeField(auto_now_add=True,blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True,blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'project_task'

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