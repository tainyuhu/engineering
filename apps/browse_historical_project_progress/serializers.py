from rest_framework import serializers
from .models import HistoricalProjectProgress, HistoricalProjectExpectedProgress, SeasonHistoricalProjectProgress,  SeasonHistoricalProjectExpectedProgress

class HistoricalProjectProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = HistoricalProjectProgress
        fields = '__all__'

class HistoricalProjectExpectedProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = HistoricalProjectExpectedProgress
        fields = '__all__'

class SeasonHistoricalProjectProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = SeasonHistoricalProjectProgress
        fields = '__all__'

class SeasonHistoricalProjectExpectedProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = SeasonHistoricalProjectExpectedProgress
        fields = '__all__'