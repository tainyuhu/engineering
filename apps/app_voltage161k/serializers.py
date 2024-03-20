from rest_framework import serializers
from .models import (
    Voltage161KWeek,ProjectVoltage161K, ProjectVoltage161KHistory, ProjectVoltage161KProgress, ProjectVoltage161KExpectedProgress,
    Voltage161KBankProgress, Voltage161KBankHistory, Voltage161KBankProgressExpected, Voltage161KBankExpectedHistory
)

# 專案Voltage161K周
class Voltage161KWeekSerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage161KWeek
        fields = ('week_id', 'year', 'quarter', 'week', 'start_date', 'end_date')

# 專案Voltage161K
class ProjectVoltage161KSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectVoltage161K
        fields = '__all__'

# 專案Voltage161K歷史
class ProjectVoltage161KHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectVoltage161KHistory
        fields = '__all__'

# 專案Voltage161K實際進度(工程版)
class ProjectVoltage161KProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectVoltage161KProgress
        fields = [
            'progress_id',
            'voltage161k_id',
            'series_id',
            'progress_percentage',
            'supervisor',
            'non_construction_reason',
            'progress_calculation_description',
            'last_update',
            'create_at',
            'voltage161k_week_id',
        ]

# 專案Voltage161K預期進度(工程版)
class ProjectVoltage161KExpectedProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectVoltage161KExpectedProgress
        fields = '__all__'

# 專案Voltage161K實際進度(銀行版)
class Voltage161KBankProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage161KBankProgress
        fields = '__all__'

# 專案Voltage161K實際進度(銀行版)歷史
class Voltage161KBankHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage161KBankHistory
        fields = '__all__'

# 專案Voltage161K預期進度(銀行版)
class Voltage161KBankProgressExpectedSerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage161KBankProgressExpected
        fields = '__all__'

# 專案Voltage161K預期進度(銀行版)歷史
class Voltage161KBankExpectedHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage161KBankExpectedHistory
        fields = '__all__'
