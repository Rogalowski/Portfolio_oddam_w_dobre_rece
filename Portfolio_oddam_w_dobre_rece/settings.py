"""
Django settings for Portfolio_oddam_w_dobre_rece project.

Generated by 'django-admin startproject' using Django 3.2.8.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.2/ref/settings/
"""

from pathlib import Path
import os

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.environ.get(
    'SECRET_KEY')
# SECURITY WARNING: don't run with debug turned on in production!
ALLOWED_HOSTS = ["127.0.0.1"]
DEBUG = str(os.environ.get('DEBUG')) == "1"

if DEBUG:
    STATICFILES_DIRS = [os.path.join(BASE_DIR, 'static')]  # static ROOT import
else:
    STATIC_ROOT = os.path.join(BASE_DIR, 'static')
    ALLOWED_HOSTS += [os.environ.get('ALLOWED_HOSTS')]
# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'charity_good_hands_app.apps.CharityGoodHandsAppConfig',
    # 'charity_good_hands_app',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'Portfolio_oddam_w_dobre_rece.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        # 'DIRS': [BASE_DIR / 'charity_good_hands_app/templates']
        'DIRS': [BASE_DIR / 'templates'],
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

WSGI_APPLICATION = 'Portfolio_oddam_w_dobre_rece.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'HOST':  os.getenv('POSTGRES_DB_HOST'),
        'NAME':  os.getenv('POSTGRES_DB'),  # 'bookstore',
        'USER': os.getenv('POSTGRES_USER'),
        'PASSWORD': os.getenv('POSTGRES_PASSWORD'),
        'PORT': os.getenv('POSTGRES_PORT'),
    }
}


# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

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
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'pl-PL'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'

# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "static"),  # static ROOT import
]

AUTH_USER_MODEL = "charity_good_hands_app.User"

LOGIN_URL = 'login_view'
LOGIN_REDIRECT_URL = 'add_donation_view'
LOGOUT_REDIRECT_URL = 'home_index'

# //Should be included in .env
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_HOST_USER = 'informatyka3am@gmail.com'
EMAIL_FROM_USER = 'informatyka3am@gmail.com'
# EMAIL_USE_TLS = os.environ.get('EMAIL_USE_TLS')
EMAIL_USE_TLS = True
EMAIL_HOST_PASSWORD = 'informatyka'
EMAIL_PORT = 587
