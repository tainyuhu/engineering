from .models import SystemLog

def log_system_error(error, view_name=None, user_id=None):
    SystemLog.objects.create(
        error_type=str(type(error).__name__),
        error_message=str(error),
        additionalInfo=f" {view_name}" if view_name else "",
        user_id=user_id
    )