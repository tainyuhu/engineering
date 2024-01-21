from django.contrib.auth import login, logout
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import UserSerializer
from django.contrib.auth import authenticate
from django.http import JsonResponse
from casbin_adapter.models import CasbinRule
from django.contrib.auth.models import User
from .casbin_middleware import CasbinMiddleware
from urllib.parse import unquote

@api_view(['POST'])
def login_view(request):
    username = request.data.get('username')
    password = request.data.get('password')
    user = authenticate(username=username, password=password)
    if user:
        login(request, user)
        return Response({'status': 'success'}, status=status.HTTP_200_OK)
    return Response({'status': 'unauthorized'}, status=status.HTTP_401_UNAUTHORIZED)

@api_view(['POST'])
def logout_view(request):
    logout(request)
    return Response({'status': 'logged out'}, status=status.HTTP_200_OK)

@api_view(['POST'])
def register_view(request):
    serializer = UserSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response({'status': 'registered'}, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# @api_view(['GET'])
# def get_route_view(request):
#     print(request)
#     user = request.user
#     print(user)
#     is_login = request.user.is_authenticated
#     casbin_rules = CasbinRule.objects.all()
#     print(is_login)
#     print(casbin_rules)

#     return Response({'status': 'Test'}, status=status.HTTP_200_OK)
    # user = request.user.id
    # groups = user.groups.values('name') # 群組 <List>
    # print(groups)

def check_permission(request):
    
    user = request.GET.get('auth')
    resource = unquote(request.GET.get('resource')) 
    action = request.GET.get('action')

    # user = 'pp'
    # resource = '/Fillin_Project_Progress'
    # action = 'read'
    
    print(f"Received params: user={user}, resource={resource}, action={action}")

    casbin_middleware = CasbinMiddleware(get_response=None)

    if casbin_middleware.enforcer.enforce(user, resource, action):
        return JsonResponse({'permission': True})
    else:
        return JsonResponse({'permission': False})

# def add_policy(request):
#     sub = request.POST.get('sub')
#     obj = request.POST.get('obj')
#     act = request.POST.get('act')

#     if CasbinMiddleware.add_policy(sub, obj, act):
#         return JsonResponse({'message': 'Policy added successfully'}, status=200)
#     else:
#         return JsonResponse({'message': 'Failed to add policy'}, status=400)

# def remove_policy(request):
#     sub = request.POST.get('sub')
#     obj = request.POST.get('obj')
#     act = request.POST.get('act')

#     if CasbinMiddleware.remove_policy(sub, obj, act):
#         return JsonResponse({'message': 'Policy removed successfully'}, status=200)
#     else:
#         return JsonResponse({'message': 'Failed to remove policy'}, status=400)

