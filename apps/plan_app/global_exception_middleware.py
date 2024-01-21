from django.http import JsonResponse
from .utils import log_system_error
from django.http import Http404

class GlobalExceptionMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        try:
            response = self.get_response(request)
            if response.status_code == 404:
                
                log_system_error('404 Not Found', request.path)
        except Exception as e:
            log_system_error(e)
            return JsonResponse({"error": "發生內部伺服器錯誤。"}, status=500)
        return response
