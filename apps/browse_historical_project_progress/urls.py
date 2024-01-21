from django.urls import path
from .views import HistoricalProjectProgressList, HistoricalProjectExpectedProgressList, SeasonHistoricalProjectProgressList, SeasonHistoricalProjectExpectedProgressList

urlpatterns = [
    path('historical_progress/', HistoricalProjectProgressList.as_view(), name='historical-progress-list'),
    path('historical_expected_progress/', HistoricalProjectExpectedProgressList.as_view(), name='historical_expected_progress-list'),
    path('season_historical_progress/', SeasonHistoricalProjectProgressList.as_view(), name='season_historical_progress-list'),
    path('season_historical-_expected_progress/', SeasonHistoricalProjectExpectedProgressList.as_view(), name='season_historical-_expected_progress'),
]
