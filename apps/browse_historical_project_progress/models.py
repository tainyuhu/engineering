from django.db import models

# 歷史pv進度紀錄
class HistoricalProjectProgress(models.Model):
    loop_name = models.CharField(max_length=255, blank=True, null=True)
    historical_case = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    historical_progress_rate = models.FloatField(blank=True, null=True)
    updated_at = models.DateTimeField(auto_now_add=True)
    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'historical_pv_records'
        ordering = ('id',)

# 歷史pv預期進度紀錄
class HistoricalProjectExpectedProgress(models.Model):
    loop_name = models.CharField(max_length=255, blank=True, null=True)
    historical_case = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    historical_progress_rate = models.FloatField(blank=True, null=True)
    updated_at = models.DateTimeField(auto_now_add=True)
    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'historical_pv_expected'
        ordering = ('id',)

# 歷史pv季月總進度紀錄
class SeasonHistoricalProjectProgress(models.Model):
    historical_loop = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    historical_progress_rate = models.FloatField(blank=True, null=True)
    updated_at = models.DateTimeField(auto_now_add=True)
    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'historical_pv_records_season'
        ordering = ('id',)

# 歷史pv季月總預期進度紀錄
class SeasonHistoricalProjectExpectedProgress(models.Model):
    historical_loop = models.CharField(max_length=255, blank=True, null=True)
    estimated_start_date = models.DateField(blank=True, null=True)
    estimated_completion_date = models.DateField(blank=True, null=True)
    historical_progress_rate = models.FloatField(blank=True, null=True)
    updated_at = models.DateTimeField(auto_now_add=True)
    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'historical_pv_expected_season'
        ordering = ('id',)