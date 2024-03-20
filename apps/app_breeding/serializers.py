from rest_framework import serializers
from .models import (
    BreedingWeek,ProjectBreeding, ProjectBreedingHistory, ProjectBreedingProgress, ProjectBreedingExpectedProgress,
    BreedingBankProgress, BreedingBankHistory, BreedingBankProgressExpected, BreedingBankExpectedHistory
)

# 專案Breeding周
class BreedingWeekSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingWeek
        fields = ('week_id', 'year', 'quarter', 'week', 'start_date', 'end_date')

# 專案Breeding
class ProjectBreedingSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectBreeding
        fields = '__all__'

# 專案Breeding歷史
class ProjectBreedingHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectBreedingHistory
        fields = '__all__'

# 專案Breeding實際進度(工程版)
class ProjectBreedingProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectBreedingProgress
        fields = [
            'progress_id',
            'breeding_id',
            'series_id',
            'progress_percentage',
            'supervisor',
            'non_construction_reason',
            'progress_calculation_description',
            'last_update',
            'create_at',
            'breeding_week_id',
        ]

# 專案Breeding預期進度(工程版)
class ProjectBreedingExpectedProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectBreedingExpectedProgress
        fields = '__all__'

# 專案Breeding實際進度(銀行版)
class BreedingBankProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingBankProgress
        fields = '__all__'

# 專案Breeding實際進度(銀行版)歷史
class BreedingBankHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingBankHistory
        fields = '__all__'

# 專案Breeding預期進度(銀行版)
class BreedingBankProgressExpectedSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingBankProgressExpected
        fields = '__all__'

# 專案Breeding預期進度(銀行版)歷史
class BreedingBankExpectedHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingBankExpectedHistory
        fields = '__all__'
