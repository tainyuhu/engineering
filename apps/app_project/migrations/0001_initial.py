# Generated by Django 4.2.6 on 2024-03-13 08:19

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CasesHistory',
            fields=[
                ('history_id', models.AutoField(primary_key=True, serialize=False)),
                ('changed_column', models.CharField(max_length=255)),
                ('previous_value', models.TextField()),
                ('new_value', models.TextField()),
                ('change_type', models.CharField(max_length=50)),
                ('change_time', models.DateTimeField(auto_now_add=True)),
                ('changed_by', models.CharField(max_length=255)),
                ('change_reason', models.TextField()),
                ('change_description', models.TextField()),
            ],
            options={
                'db_table': 'cases_history',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CasesProgress',
            fields=[
                ('progress_id', models.AutoField(primary_key=True, serialize=False)),
                ('progress_percentage', models.DecimalField(decimal_places=2, max_digits=5)),
                ('progress_description', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'cases_progress',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CasesProgressExpected',
            fields=[
                ('progress_id', models.AutoField(primary_key=True, serialize=False)),
                ('progress_percentage', models.DecimalField(decimal_places=2, max_digits=5)),
                ('progress_description', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'cases_progress_expected',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='LoopsHistory',
            fields=[
                ('history_id', models.AutoField(primary_key=True, serialize=False)),
                ('changed_column', models.CharField(max_length=255)),
                ('previous_value', models.TextField()),
                ('new_value', models.TextField()),
                ('change_type', models.CharField(max_length=50)),
                ('change_time', models.DateTimeField(auto_now_add=True)),
                ('changed_by', models.CharField(max_length=255)),
                ('change_reason', models.TextField()),
                ('change_description', models.TextField()),
            ],
            options={
                'db_table': 'loops_history',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='LoopsProgress',
            fields=[
                ('progress_id', models.AutoField(primary_key=True, serialize=False)),
                ('progress_percentage', models.DecimalField(decimal_places=2, max_digits=5)),
                ('progress_description', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'loops_progress',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='LoopsProgressExpected',
            fields=[
                ('progress_id', models.AutoField(primary_key=True, serialize=False)),
                ('progress_percentage', models.DecimalField(decimal_places=2, max_digits=5)),
                ('progress_description', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'loops_progress_expected',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Project',
            fields=[
                ('project_id', models.AutoField(primary_key=True, serialize=False)),
                ('project_name', models.CharField(max_length=255)),
                ('plannedstart_date', models.DateField()),
                ('plannedend_date', models.DateField()),
                ('actualstart_date', models.DateField(blank=True, null=True)),
                ('actualend_date', models.DateField(blank=True, null=True)),
                ('construction_status', models.CharField(max_length=255)),
                ('notes', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'projects',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ProjectCase',
            fields=[
                ('case_id', models.AutoField(primary_key=True, serialize=False)),
                ('cases_name', models.CharField(max_length=255)),
                ('longitude', models.DecimalField(decimal_places=7, max_digits=10)),
                ('latitude', models.DecimalField(decimal_places=7, max_digits=10)),
                ('address', models.TextField()),
                ('plannedstart_date', models.DateField()),
                ('plannedend_date', models.DateField()),
                ('actualstart_date', models.DateField(blank=True, null=True)),
                ('actualend_date', models.DateField(blank=True, null=True)),
                ('construction_status', models.CharField(max_length=255)),
                ('notes', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'project_cases',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ProjectLoop',
            fields=[
                ('loop_id', models.AutoField(primary_key=True, serialize=False)),
                ('loop_name', models.CharField(max_length=255)),
                ('plannedstart_date', models.DateField()),
                ('plannedend_date', models.DateField()),
                ('actualstart_date', models.DateField(blank=True, null=True)),
                ('actualend_date', models.DateField(blank=True, null=True)),
                ('construction_status', models.CharField(max_length=255)),
                ('planned_parallel_date', models.DateField(blank=True, null=True)),
                ('actual_parallel_date', models.DateField(blank=True, null=True)),
                ('parallel_status', models.CharField(max_length=255)),
                ('notes', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'project_loops',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ProjectsProgress',
            fields=[
                ('progress_id', models.AutoField(primary_key=True, serialize=False)),
                ('progress_percentage', models.DecimalField(decimal_places=2, max_digits=5)),
                ('progress_description', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'projects_progress',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ProjectsProgressExpected',
            fields=[
                ('progress_id', models.AutoField(primary_key=True, serialize=False)),
                ('progress_percentage', models.DecimalField(decimal_places=2, max_digits=5)),
                ('progress_description', models.TextField()),
                ('last_update', models.DateTimeField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'projects_progress_expected',
                'managed': False,
            },
        ),
    ]
