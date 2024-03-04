from rest_framework import serializers
from .models import (
    Series, SeriesHistory, MajorItemPercentage, MajorItemPercentageHistory,
    SubItemPercentage, SubItemPercentageHistory, LogisticParameters, LogisticParametersHistory,
    ProjectPV, ProjectPVHistory, ProjectPVProgress, ProjectPVExpectedProgress,
    PVBankProgress, PVBankHistory, PVBankProgressExpected, PVBankExpectedHistory
)

# 工程價金系列
class SeriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Series
        fields = '__all__'

# 工程價金系列歷史
class SeriesHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = SeriesHistory
        fields = '__all__'

# 大價金比例資料
class MajorItemPercentageSerializer(serializers.ModelSerializer):
    class Meta:
        model = MajorItemPercentage
        fields = '__all__'

# 大價金比例資料歷史
class MajorItemPercentageHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = MajorItemPercentageHistory
        fields = '__all__'

# 小價金比例資料
class SubItemPercentageSerializer(serializers.ModelSerializer):
    class Meta:
        model = SubItemPercentage
        fields = '__all__'

# 小價金比例資料歷史
class SubItemPercentageHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = SubItemPercentageHistory
        fields = '__all__'

# 邏輯斯蒂方程參數
class LogisticParametersSerializer(serializers.ModelSerializer):
    class Meta:
        model = LogisticParameters
        fields = '__all__'

# 邏輯斯蒂方程參數歷史
class LogisticParametersHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = LogisticParametersHistory
        fields = '__all__'

# 專案PV
class ProjectPVSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectPV
        fields = '__all__'

# 專案PV歷史
class ProjectPVHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectPVHistory
        fields = '__all__'

# 專案PV實際進度(工程版)
class ProjectPVProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectPVProgress
        fields = '__all__'

# 專案PV預期進度(工程版)
class ProjectPVExpectedProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectPVExpectedProgress
        fields = '__all__'

# 專案PV實際進度(銀行版)
class PVBankProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = PVBankProgress
        fields = '__all__'

# 專案PV實際進度(銀行版)歷史
class PVBankHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = PVBankHistory
        fields = '__all__'

# 專案PV預期進度(銀行版)
class PVBankProgressExpectedSerializer(serializers.ModelSerializer):
    class Meta:
        model = PVBankProgressExpected
        fields = '__all__'

# 專案PV預期進度(銀行版)歷史
class PVBankExpectedHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = PVBankExpectedHistory
        fields = '__all__'
