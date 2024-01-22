# Generated by Django 4.2.6 on 2023-11-24 07:51

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='PvDetaileditemWeight',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('detailed_name', models.CharField(max_length=255)),
                ('detailed_weight', models.FloatField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'db_table': 'pv_detaileditem_weight',
                'ordering': ('id',),
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PvExpectedProgress',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('estimated_start_date', models.DateField(blank=True, null=True)),
                ('estimated_completion_date', models.DateField(blank=True, null=True)),
                ('actual_start_date', models.DateField(blank=True, null=True)),
                ('actual_completion_date', models.DateField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'db_table': 'pv_expected_progress',
                'ordering': ('id',),
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PvProgress',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('start_date', models.DateField(blank=True, null=True)),
                ('completion_date', models.DateField(blank=True, null=True)),
                ('progress', models.FloatField(blank=True, null=True)),
                ('personnel', models.CharField(blank=True, max_length=50, null=True)),
                ('cause', models.TextField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'db_table': 'pv_progress',
                'ordering': ('id',),
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PVProject',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('project_code', models.CharField(blank=True, max_length=255, null=True)),
                ('project_name', models.CharField(blank=True, max_length=255, null=True)),
                ('project_personnel', models.CharField(blank=True, max_length=255, null=True)),
                ('project_status', models.IntegerField(blank=True, null=True)),
                ('estimated_start_date', models.DateField(blank=True, null=True)),
                ('estimated_completion_date', models.DateField(blank=True, null=True)),
                ('actual_start_date', models.DateField(blank=True, null=True)),
                ('actual_completion_date', models.DateField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'db_table': 'pv_project',
                'ordering': ('id',),
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PvSubitemWeight',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('subitem_name', models.CharField(max_length=255)),
                ('subitem_weight', models.FloatField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'db_table': 'pv_subitem_weight',
                'ordering': ('id',),
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='PvTasks',
            fields=[
                ('pv_task_id', models.IntegerField(primary_key=True, serialize=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'db_table': 'pv_tasks',
                'managed': False,
            },
        ),
    ]