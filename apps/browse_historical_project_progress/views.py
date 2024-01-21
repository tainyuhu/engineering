from rest_framework import generics
from .models import HistoricalProjectProgress, HistoricalProjectExpectedProgress, SeasonHistoricalProjectProgress,  SeasonHistoricalProjectExpectedProgress
from .serializers import HistoricalProjectProgressSerializer, HistoricalProjectExpectedProgressSerializer, SeasonHistoricalProjectProgressSerializer,  SeasonHistoricalProjectExpectedProgressSerializer

class HistoricalProjectProgressList(generics.ListAPIView):
    queryset = HistoricalProjectProgress.objects.all()
    serializer_class = HistoricalProjectProgressSerializer

class HistoricalProjectExpectedProgressList(generics.ListAPIView):
    queryset = HistoricalProjectExpectedProgress.objects.all()
    serializer_class = HistoricalProjectExpectedProgressSerializer

class SeasonHistoricalProjectProgressList(generics.ListAPIView):
    queryset = SeasonHistoricalProjectProgress.objects.all()
    serializer_class = SeasonHistoricalProjectProgressSerializer

class SeasonHistoricalProjectExpectedProgressList(generics.ListAPIView):
    queryset = SeasonHistoricalProjectExpectedProgress.objects.all()
    serializer_class = SeasonHistoricalProjectExpectedProgressSerializer