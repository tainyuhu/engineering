from rest_framework import serializers
from .models import BreedingDetaileditemWeight, BreedingExpectedProgress, BreedingProgress, BreedingProject, BreedingSubitemWeight, BreedingTasks

class BreedingDetaileditemWeightSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingDetaileditemWeight
        fields = '__all__'

class BreedingExpectedProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingExpectedProgress
        fields = '__all__'

class BreedingProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingProgress
        fields = '__all__'

class BreedingProjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingProject
        fields = '__all__'

class BreedingSubitemWeightSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingSubitemWeight
        fields = '__all__'

class BreedingTasksSerializer(serializers.ModelSerializer):
    class Meta:
        model = BreedingTasks
        fields = '__all__'