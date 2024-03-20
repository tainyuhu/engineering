from rest_framework import serializers
from .models import (
    Voltage228KWeek,ProjectVoltage228K, ProjectVoltage228KHistory, ProjectVoltage228KProgress, ProjectVoltage228KExpectedProgress,
    Voltage228KBankProgress, Voltage228KBankHistory, Voltage228KBankProgressExpected, Voltage228KBankExpectedHistory
)

# 專案Voltage228K周
class Voltage228KWeekSerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage228KWeek
        fields = ('week_id', 'year', 'quarter', 'week', 'start_date', 'end_date')

# 專案Voltage228K
class ProjectVoltage228KSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectVoltage228K
        fields = '__all__'

# 專案Voltage228K歷史
class ProjectVoltage228KHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectVoltage228KHistory
        fields = '__all__'

# 專案Voltage228K實際進度(工程版)
class ProjectVoltage228KProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectVoltage228KProgress
        fields = [
            'progress_id',
            'voltage228k_id',
            'series_id',
            'progress_percentage',
            'supervisor',
            'non_construction_reason',
            'progress_calculation_description',
            'last_update',
            'create_at',
            'voltage228k_week_id',
        ]

# 專案Voltage228K預期進度(工程版)
class ProjectVoltage228KExpectedProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectVoltage228KExpectedProgress
        fields = '__all__'

# 專案Voltage228K實際進度(銀行版)
class Voltage228KBankProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage228KBankProgress
        fields = '__all__'

# 專案Voltage228K實際進度(銀行版)歷史
class Voltage228KBankHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage228KBankHistory
        fields = '__all__'

# 專案Voltage228K預期進度(銀行版)
class Voltage228KBankProgressExpectedSerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage228KBankProgressExpected
        fields = '__all__'

# 專案Voltage228K預期進度(銀行版)歷史
class Voltage228KBankExpectedHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Voltage228KBankExpectedHistory
        fields = '__all__'
