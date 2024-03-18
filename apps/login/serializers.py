from django.contrib.auth.models import User ,Group
from rest_framework import serializers
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id','username', 'password', 'email', 'is_staff', 'is_active', 'title', 'department']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user
 
class GroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group
        fields = ['id', 'name']

class ExtendedTokenUser:
    def __init__(self, token_user, token):
        self.token_user = token_user
        self.token = token
    
    @property
    def first_name(self) -> str:
        return self.token.get('first_name', '')

    @property
    def last_name(self) -> str:
        return self.token.get('last_name', '')

    @property
    def email(self) -> str:
        return self.token.get('email', '')

class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    def validate(self, attrs):
        data = super().validate(attrs)
        data['username'] = self.user.username
        data['first_name'] = self.user.first_name
        data['last_name'] = self.user.last_name
        data['email'] = self.user.email
        data['is_staff'] = self.user.is_staff
        data['is_active'] = self.user.is_active
        # data['permissions'] = self.get_user_permissions()
        data['groups'] =  [group.name for group in self.user.groups.all()]

        return data
    def get_user_permissions(self):
        """獲取所有權限"""
        user_permissions = self.user.get_user_permissions()
        group_permissions = self.user.get_group_permissions()
        all_permissions = list(user_permissions | group_permissions)
        return all_permissions
    
    @classmethod        
    def get_token(cls, user):
        token = super().get_token(user)
        token['username'] = user.username
        token['is_staff'] = user.is_staff
        token['is_active'] = user.is_active
        return token
    
