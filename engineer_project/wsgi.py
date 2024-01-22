"""
WSGI config for engineer_project project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'engineer_project.settings')

#region (WSGI)
import sys
PROJECT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, PROJECT_DIR)  # 項目加入導包路徑
virtualenv_dir = os.path.join(PROJECT_DIR, 'venv', 'Lib', 'site-packages')  # 虛擬環境python包文件夾
sys.path.insert(0, virtualenv_dir)  # 加入導包路徑

#endregion

application = get_wsgi_application()
