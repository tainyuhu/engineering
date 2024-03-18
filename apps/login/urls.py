from django.urls import path
from . import views
from .views import MyTokenObtainPairView, add_user_to_group, create_group, create_user, get_user_by_username, get_user_permissions, login_view, logout_view, register_view

urlpatterns = [
    path('login/', login_view, name='login'),
    path('logout/', logout_view, name='logout'),
    path('register/', register_view, name='register'),
    path('create_group/', create_group, name='create_group'),
    path('add_user_to_group/', add_user_to_group, name='add_user_to_group'),
    path('create_user/', create_user, name='create_user'),
    path('get_user_permissions/', get_user_permissions, name='get_user_permissions'),
    path('users/<username>/', get_user_by_username, name='get_user_by_username'),
    path('token/', MyTokenObtainPairView.as_view(), name='token_obtain_pair'),
]
