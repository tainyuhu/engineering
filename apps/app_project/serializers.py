from rest_framework import serializers
from .models import (
    Project, ProjectsProgress, ProjectsProgressExpected, ProjectLoop, LoopsHistory,
    LoopsProgress, LoopsProgressExpected, ProjectCase, CasesHistory, CasesProgress, CasesProgressExpected
)

# 專案
class ProjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = Project
        fields = '__all__'

# 專案進度
class ProjectsProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectsProgress
        fields = '__all__'

# 專案預期進度
class ProjectsProgressExpectedSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectsProgressExpected
        fields = '__all__'

# 專案迴路
class ProjectLoopSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectLoop
        fields = '__all__'

# 專案迴路歷史
class LoopsHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = LoopsHistory
        fields = '__all__'

# 專案迴路進度
class LoopsProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = LoopsProgress
        fields = '__all__'

# 專案迴路預期進度
class LoopsProgressExpectedSerializer(serializers.ModelSerializer):
    class Meta:
        model = LoopsProgressExpected
        fields = '__all__'

# 專案案場
class ProjectCaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectCase
        fields = '__all__'

# 專案案場歷史
class CasesHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = CasesHistory
        fields = '__all__'

# 專案案場實際進度
class CasesProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = CasesProgress
        fields = '__all__'

# 專案案場預期進度
class CasesProgressExpectedSerializer(serializers.ModelSerializer):
    class Meta:
        model = CasesProgressExpected
        fields = '__all__'
