from rest_framework import generics
from .models import BreedingDetaileditemWeight, BreedingExpectedProgress, BreedingProgress, BreedingProject, BreedingSubitemWeight, BreedingTasks
from .serializers import BreedingDetaileditemWeightSerializer, BreedingExpectedProgressSerializer, BreedingProgressSerializer, BreedingProjectSerializer, BreedingSubitemWeightSerializer, BreedingTasksSerializer

class BreedingDetaileditemWeightList(generics.ListCreateAPIView):
    queryset = BreedingDetaileditemWeight.objects.all()
    serializer_class = BreedingDetaileditemWeightSerializer

class BreedingDetaileditemWeightDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingDetaileditemWeight.objects.all()
    serializer_class = BreedingDetaileditemWeightSerializer

class BreedingExpectedProgressList(generics.ListCreateAPIView):
    queryset = BreedingExpectedProgress.objects.all()
    serializer_class = BreedingExpectedProgressSerializer

class BreedingExpectedProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingExpectedProgress.objects.all()
    serializer_class = BreedingExpectedProgressSerializer

class BreedingProgressList(generics.ListCreateAPIView):
    queryset = BreedingProgress.objects.all()
    serializer_class = BreedingProgressSerializer

class BreedingProgressDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingProgress.objects.all()
    serializer_class = BreedingProgressSerializer

class BreedingProjectList(generics.ListCreateAPIView):
    queryset = BreedingProject.objects.all()
    serializer_class = BreedingProjectSerializer

class BreedingProjectDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingProject.objects.all()
    serializer_class = BreedingProjectSerializer

class BreedingSubitemWeightList(generics.ListCreateAPIView):
    queryset = BreedingSubitemWeight.objects.all()
    serializer_class = BreedingSubitemWeightSerializer

class BreedingSubitemWeightDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingSubitemWeight.objects.all()
    serializer_class = BreedingSubitemWeightSerializer

class BreedingTasksList(generics.ListCreateAPIView):
    queryset = BreedingTasks.objects.all()
    serializer_class = BreedingTasksSerializer

class BreedingTasksDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BreedingTasks.objects.all()
    serializer_class = BreedingTasksSerializer