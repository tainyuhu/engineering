from django.contrib import admin
from django.urls import path, include, re_path # 引用呼叫路由的方法
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from .settings import DEBUG # 用於判斷目前開發模式

# 引用前端路由使用
from django.views.generic import TemplateView

# 【測試開發】: DEBUG = True(Deployment)
if( DEBUG ):
    urlpatterns = [
        re_path(r'^$', TemplateView.as_view(template_name="index.html")), # 配置前端路由

        path('admin/', admin.site.urls),
        path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
        path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
        path('api/', include('apps.plan_app.urls')),
        path('api/', include('apps.pv_app.urls')),
        path('api/', include('apps.breeding_app.urls')),
        path('api/', include('apps.login.urls')),
        path('api/', include('apps.browse_historical_project_progress.urls')),


        # 【解決Vue-Router History mode刷新頁面404的問題】https://blog.csdn.net/lucky__peng/article/details/124950853
        re_path(r'.*', TemplateView.as_view(template_name="index.html")), # 新增的(加在最後一段，這樣如果有找不到的內容都會被導引到index.html)
    ]


# 【正式上線】: DEBUG = False(Production)
else:
    urlpatterns = [
        re_path(r'^$', TemplateView.as_view(template_name="index.html")), # 配置前端路由

        path('admin/', admin.site.urls),
        path('api/pv/project', include('apps.project_app_pv.urls')), # 新增的app
        path('api/breeding/project', include('apps.project_app_breeding.urls')), # 新增的app
        path('api/', include('apps.plan_app.urls')),
        # path('api/pv/project', include('apps.pv.project_app.urls')), # 新增的app
        # path('api/breeding/project', include('apps.breeding.project_app.urls')), # 新增的app


        # 【解決Vue-Router History mode刷新頁面404的問題】https://blog.csdn.net/lucky__peng/article/details/124950853
        re_path(r'.*', TemplateView.as_view(template_name="index.html")), # 新增的(加在最後一段，這樣如果有找不到的內容都會被導引到index.html)
    ]