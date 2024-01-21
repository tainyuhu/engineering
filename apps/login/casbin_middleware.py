import casbin,os
from django.core.exceptions import PermissionDenied
from casbin_adapter.adapter import Adapter # ORM Adapter
from casbin_adapter.models import CasbinRule
from django.http import HttpResponseForbidden

class CasbinMiddleware:

    def __init__(self, get_response):
        self.get_response = get_response

        # 【ORM Adapter】
        adapter = Adapter()
      
        model_conf_path = os.path.join( os.getcwd(), 'casbin.conf' )
        # Initialize the Casbin enforcer, executed only on once.
        self.enforcer = casbin.Enforcer(
            model_conf_path, # 設定條件
            adapter # 各角色限制
        )

    def __call__(self, request):

        # Check the permission for each request.
        if not self.check_permission(request):
            # Not authorized, return HTTP 403 error.
            self.require_permission()
            # return HttpResponseForbidden("Access denied!")

        # Permission passed, go to next module.
        response = self.get_response(request)
        return response

    def require_permission(self,):
        raise PermissionDenied