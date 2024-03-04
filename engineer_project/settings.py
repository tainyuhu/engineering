﻿"""
Django settings for engineer_project project.

Generated by 'django-admin startproject' using Django 4.2.6.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.2/ref/settings/
"""

from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-cacs3$pgw!!h-enhi0pxg!hcx@ap&f-^8e11i89&*c=pj011_r'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True
# DEBUG = False

# ALLOWED_HOSTS = []
ALLOWED_HOSTS = ["*"]


# CORS setting
CORS_ALLOW_CREDENTIALS = True
CORS_ALLOW_ALL_ORIGINS = True

# CORS_ORIGIN_WHITELIST = ( # 設定白名單
#     "http://localhost:8000",
#     "http://localhost",
#     'http://103.118.27.148',
#     'https://103.118.27.148',
# )
# CSRF_TRUSTED_ORIGINS = [
#     'http://127.0.0.1:80',
#     'http://127.0.0.1:8000',
#     "http://localhost:8080",
#     "http://127.0.0.1:8080",
# ]

#region (APPS 設定)
# Application definition
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django_extensions',
]
# Thired party apps (第三方應用套件)
INSTALLED_APPS += [
    'corsheaders',
    'rest_framework',
    'casbin_adapter.apps.CasbinAdapterConfig',
]

# Custom apps (自定義)
INSTALLED_APPS += [
    'apps.app_plan',
    'apps.app_project',
    'apps.app_pv',
    'apps.browse_historical_project_progress', #歷史工程資料相關
    'apps.login', #登入相關
]

# 如果要透過 apps來管理每個 app，則必須加上這行，否則上方 INSTALLED_APPS則必須要加上前綴 <apps>
import sys, os
# sys.path.append(os.path.join(BASE_DIR, 'apps', 'pv')) # at the bottom of the fiS
# sys.path.append(os.path.join(BASE_DIR, 'apps', 'breeding')) # at the bottom of the fiS
# sys.path.append(os.path.join(BASE_DIR, 'apps')) # at the bottom of the fiS

sys.path.insert(0, os.path.join(BASE_DIR, 'apps'))
#endregion


MIDDLEWARE = [
    'corsheaders.middleware.CorsMiddleware', # 需注意与其他中间件顺序，这里放在最前面即可
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    # 'django.middleware.csrf.CsrfViewMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware', # 新增這一行 (pip install whitenoise)
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'engineer_project.urls'



#region (樣板畫面設定)
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        # 'DIRS': [], // 修改前
        'DIRS': [os.path.join(BASE_DIR, 'frontend/dist')], # 修改後 => 前端Vue的build編譯後的結果
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]
#endregion

WSGI_APPLICATION = 'engineer_project.wsgi.application'


#region (Database Configure - MySQL)
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases

DATABASES = {
    'default': { # MySQL(預設)
        'ENGINE': 'django.db.backends.mysql', # 使用的資料庫引擎
        'NAME': 'engineer_system', # MySQL 資料庫的名稱
        'USER': 'root', # 使用者名稱
        # 'PASSWORD': 'Ru,6e.4vu4wj/3', # 密碼
        'HOST': 'localhost', # IP 地址
        'PORT': '3306', # 埠號(mysql為 3306)
        'OPTIONS': { # 避免發生『MariaDB Strict Mode』問題
            'sql_mode': 'traditional',
        },
    },
    'sqlite': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}

#endregion


# Password validation
# https://docs.djangoproject.com/en/4.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/4.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True



#region 【Static files】 (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.2/howto/static-files/

# 儲存static檔案的路徑
STATIC_ROOT = os.path.join(BASE_DIR, 'static') 

# 對外提供WEB訪問時的URL地址
STATIC_URL = '/static/'


# ---(如有使用前端框架時使用)---
# 【開發測試用】-> debug = False則無用
# Vue project location
FRONTEND_DIR = os.path.join(BASE_DIR, 'frontend')

# Add for vuejs (放靜態檔案的路徑，將該路徑下的檔案蒐集到STATIC_ROOT。DEBUG is False會關閉)
STATICFILES_DIRS = [ 
    os.path.join(FRONTEND_DIR, 'dist', 'static'),
]

STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage' # pip install whitenoise

#endregion

# Default primary key field type
# https://docs.djangoproject.com/en/4.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'rest_framework_simplejwt.authentication.JWTAuthentication',
    ),
}



# CASBIN 設定
CASBIN_MODEL = os.path.join(BASE_DIR, 'casbin.conf')
