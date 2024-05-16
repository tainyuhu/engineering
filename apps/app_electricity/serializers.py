from rest_framework import serializers
from .models import (ElectricalProgress, StageSeries, Stage, ProjectElectrical)

class StageSeriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = StageSeries
        fields = '__all__'

class StageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Stage
        fields = '__all__'

class ProjectElectricalSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectElectrical
        fields = '__all__'


class ElectricalProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ElectricalProgress
        fields = '__all__'