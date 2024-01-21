from django.urls import path
from . import views
from .views import login_view, logout_view, register_view

urlpatterns = [
    path('login/', login_view, name='login'),
    path('logout/', logout_view, name='logout'),
    path('register/', register_view, name='register'),
    path('check_permission/', views.check_permission, name='check_permission'),
    # path('get_route/', get_route_view, name='route_view'),
    # path('add_policy', views.add_policy, name='add_policy'),
    # path('remove_policy', views.remove_policy, name='remove_policy'),
]
