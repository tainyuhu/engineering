from rest_framework import serializers
from .models import  PVProject, PvDetaileditemWeight, PvExpectedProgress, PvProgress, PvSubitemWeight, PvTasks, PvExpected, PvBank, PvWeeklyProgressSummary

# 清單
class PVProjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = PVProject
        fields = '__all__'

class PvDetaileditemWeightSerializer(serializers.ModelSerializer):
    class Meta:
        model = PvDetaileditemWeight
        fields = '__all__'

class PvExpectedProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = PvExpectedProgress
        fields = '__all__'

class PvExpectedSerializer(serializers.ModelSerializer):
    class Meta:
        model = PvExpected
        fields = '__all__'

class PvProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = PvProgress
        fields = '__all__'

class PvSubitemWeightSerializer(serializers.ModelSerializer):
    class Meta:
        model = PvSubitemWeight
        fields = '__all__'

class PvTasksSerializer(serializers.ModelSerializer):
    class Meta:
        model = PvTasks
        fields = '__all__'

class PvBankSerializer(serializers.ModelSerializer):
    class Meta:
        model = PvBank
        fields = '__all__'

class PvWeeklyProgressSummarySerializer(serializers.ModelSerializer):
    class Meta:
        model = PvWeeklyProgressSummary
        fields = '__all__'

# 運算
class WeekProgressTableDataSerializer(serializers.Serializer):
    project_name = serializers.CharField(source='project.project_name')
    expected = PvExpectedSerializer(many=True)
    progress = PvProgressSerializer(many=True)

    class Meta:
        fields = ['project_name', 'expected', 'progress']

class SeasonDataSerializer(serializers.Serializer):
    project_name = serializers.CharField()
    season = serializers.CharField()
    type = serializers.CharField()
    value = serializers.CharField()

class SeasonTableDataSerializer(serializers.Serializer):
    headers = serializers.ListField(child=serializers.CharField())
    rows = serializers.ListField(child=SeasonDataSerializer())



        