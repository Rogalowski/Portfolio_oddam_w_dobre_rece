"""Portfolio_oddam_w_dobre_rece URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls.static import static  # static ROOT import
from django.conf import settings  # static ROOT import

from charity_good_hands_app.views import LandingPageView, AddDonationView, LoginView, RegisterView, LogoutView, \
    FormConfirmationView

urlpatterns = [
    path('admin/', admin.site.urls, name="admin_panel"),
    path('', LandingPageView.as_view(), name="home_index"),
    path('add_donation/', AddDonationView.as_view(), name="add_donation_view"),
    path('form_confirmation/', FormConfirmationView.as_view(), name="form_confirmation"),
    path('login/', LoginView.as_view(), name="login_view"),
    path('logout/', LogoutView.as_view(), name="logout_view"),
    path('register/', RegisterView.as_view(), name="register_view"),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)  # static files ROOT

