# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class BreedingDetaileditemWeight(models.Model):
    id = models.BigAutoField(primary_key=True)
    detailed_name = models.CharField(max_length=255)
    detailed_weight = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    subitem = models.ForeignKey('BreedingTasks', models.DO_NOTHING, to_field='id')

    class Meta:
        managed = False
        db_table = 'breeding_detaileditem_weight'


class BreedingExpectedProgress(models.Model):
    id = models.BigAutoField(primary_key=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    actual_start_date = models.DateField(blank=True, null=True)
    actual_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    detailed = models.ForeignKey(BreedingDetaileditemWeight, models.DO_NOTHING)
    project = models.ForeignKey('BreedingProject', models.DO_NOTHING)
    subitem = models.ForeignKey('BreedingSubitemWeight', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'breeding_expected_progress'


class BreedingProgress(models.Model):
    id = models.BigAutoField(primary_key=True)
    start_date = models.DateField(blank=True, null=True)
    completion_date = models.DateField(blank=True, null=True)
    progress = models.FloatField(blank=True, null=True)
    personnel = models.CharField(max_length=50, blank=True, null=True)
    cause = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    expected = models.ForeignKey('BreedingProject', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'breeding_progress'


class BreedingProject(models.Model):
    id = models.BigAutoField(primary_key=True)
    project_code = models.CharField(max_length=255)
    project_name = models.CharField(max_length=255)
    bank_code = models.CharField(max_length=255, db_collation='utf8mb4_unicode_ci', blank=True, null=True)
    project_location = models.CharField(max_length=255)
    project_area = models.CharField(max_length=255)
    project_status = models.IntegerField()
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    actual_start_date = models.DateField(blank=True, null=True)
    actual_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    tasks = models.ForeignKey('BreedingTasks', models.DO_NOTHING)
    case = models.ForeignKey('ProjectCase', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'breeding_project'


class BreedingSubitemWeight(models.Model):
    id = models.BigAutoField(primary_key=True)
    subitem_name = models.CharField(max_length=255)
    subitem_weight = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    tasks = models.ForeignKey('BreedingTasks', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'breeding_subitem_weight'


class BreedingTasks(models.Model):
    id = models.AutoField(unique=True)
    breeding_task_id = models.IntegerField(primary_key=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'breeding_tasks'


class CasbinRule(models.Model):
    id = models.BigAutoField(primary_key=True)
    ptype = models.CharField(max_length=255)
    v0 = models.CharField(max_length=255)
    v1 = models.CharField(max_length=255)
    v2 = models.CharField(max_length=255, blank=True, null=True)
    v3 = models.CharField(max_length=255, blank=True, null=True)
    v4 = models.CharField(max_length=255, blank=True, null=True)
    v5 = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'casbin_rule'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class HistoricalPvExpected(models.Model):
    loop_name = models.CharField(max_length=255, blank=True, null=True)
    historical_case = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    historical_progress_rate = models.FloatField(blank=True, null=True)
    updated_at = models.DateTimeField()
    created_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'historical_pv_expected'


class HistoricalPvExpectedSeason(models.Model):
    historical_loop = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    historical_progress_rate = models.FloatField(blank=True, null=True)
    updated_at = models.DateTimeField()
    created_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'historical_pv_expected_season'


class HistoricalPvRecords(models.Model):
    loop_name = models.CharField(max_length=255, blank=True, null=True)
    historical_case = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    historical_progress_rate = models.FloatField(blank=True, null=True)
    updated_at = models.DateTimeField()
    created_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'historical_pv_records'


class HistoricalPvRecordsSeason(models.Model):
    historical_loop = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    historical_progress_rate = models.FloatField(blank=True, null=True)
    updated_at = models.DateTimeField()
    created_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'historical_pv_records_season'


class Plan(models.Model):
    plan_name = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'plan'


class Power(models.Model):
    power = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    project = models.ForeignKey('Project', models.DO_NOTHING, blank=True, null=True)
    loop = models.ForeignKey('ProjectLoop', models.DO_NOTHING, blank=True, null=True)
    case = models.ForeignKey('ProjectCase', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'power'


class Project(models.Model):
    projcet_name = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    progress = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    plan = models.ForeignKey(Plan, models.DO_NOTHING)
    task = models.ForeignKey('ProjectTask', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'project'


class ProjectCase(models.Model):
    case_name = models.CharField(max_length=255)
    pv = models.IntegerField()
    breeding = models.IntegerField()
    address = models.CharField(max_length=255, blank=True, null=True)
    latitude = models.FloatField(blank=True, null=True)
    longitude = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    loop = models.ForeignKey('ProjectLoop', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'project_case'


class ProjectLoop(models.Model):
    loop_name = models.CharField(max_length=255)
    bank_code = models.CharField(max_length=255)
    project_code = models.CharField(max_length=255)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    project = models.ForeignKey(Project, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'project_loop'


class ProjectProportion(models.Model):
    id = models.IntegerField()
    proportion = models.FloatField()
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    task = models.ForeignKey('ProjectTask', models.DO_NOTHING)
    projcet = models.ForeignKey(Project, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'project_proportion'


class ProjectTask(models.Model):
    id = models.AutoField(unique=True)
    project_task_id = models.IntegerField(primary_key=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'project_task'


class PvDetaileditemWeight(models.Model):
    id = models.BigAutoField(primary_key=True)
    detailed_name = models.CharField(max_length=255)
    detailed_weight = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    subitem = models.ForeignKey('PvSubitemWeight', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_detaileditem_weight'


class PvExpectedProgress(models.Model):
    id = models.BigAutoField(primary_key=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    actual_start_date = models.DateField(blank=True, null=True)
    actual_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    detailed = models.ForeignKey(PvDetaileditemWeight, models.DO_NOTHING)
    project = models.ForeignKey('PvProject', models.DO_NOTHING)
    subitem = models.ForeignKey('PvSubitemWeight', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_expected_progress'


class PvProgress(models.Model):
    id = models.BigAutoField(primary_key=True)
    start_date = models.DateField(blank=True, null=True)
    completion_date = models.DateField(blank=True, null=True)
    progress = models.FloatField(blank=True, null=True)
    personnel = models.CharField(max_length=50, blank=True, null=True)
    cause = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    expected = models.ForeignKey('PvProject', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_progress'


class PvProject(models.Model):
    id = models.BigAutoField(primary_key=True)
    project_code = models.CharField(max_length=255, blank=True, null=True)
    project_name = models.CharField(max_length=255)
    bank_code = models.CharField(max_length=255, db_collation='utf8mb4_unicode_ci', blank=True, null=True)
    case = models.ForeignKey(ProjectCase, models.DO_NOTHING)
    project_personnel = models.CharField(max_length=255, blank=True, null=True)
    project_status = models.IntegerField()
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    actual_start_date = models.DateField(blank=True, null=True)
    actual_completion_date = models.DateField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    tasks = models.ForeignKey('PvTasks', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_project'


class PvSubitemWeight(models.Model):
    id = models.BigAutoField(primary_key=True)
    subitem_name = models.CharField(max_length=255)
    subitem_weight = models.FloatField(blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    tasks = models.ForeignKey('PvTasks', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pv_subitem_weight'


class PvTasks(models.Model):
    id = models.AutoField(unique=True)
    pv_task_id = models.IntegerField(primary_key=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'pv_tasks'
