from rest_framework import serializers
from .models import ProjectCase, Plan , Project, ProjectLoop, Power, ProjectProportion, ProjectTask

class PlanSerializer(serializers.ModelSerializer):
    class Meta:
        model = Plan
        fields = '__all__'

class ProjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = Project
        fields = '__all__'

class ProjectCaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectCase
        fields = '__all__'

class ProjectLoopSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectLoop
        fields = '__all__'

class PowerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Power
        fields = '__all__'

class ProjectProportionSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectProportion
        fields = '__all__'

class ProjectTaskSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectTask
        fields = '__all__'