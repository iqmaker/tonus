# -*- coding: utf-8 -*-
# Local settings for avtotonus project.
LOCAL_SETTINGS = True
from settings import *

DEBUG = True

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'avtotonus', # Or path to database file if using sqlite3.
        'USER': 'root',                             # Not used with sqlite3.
        'PASSWORD': '',                         # Not used with sqlite3.
        'HOST': '',                             # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',                             # Set to empty string for default. Not used with sqlite3.
    }
}

# Make this unique, and don't share it with anybody.
SECRET_KEY = '4+jpq-!&amp;s=u!rbrl-1^fo7kg*#+d_^fg^i!82q#pa1yd_(^l&amp;c'
# Index page id from Article models
MAIN_PAGE_ID = 1
CONTACT_PAGE_ID = 25
PHONE = "+7(916) 730-34-73"
CITY = u"Москва, Химки"
BUYER_NAME = u"Разборка в Химках"
ARTICLE_IMAGE_SIZE = 300;

if DEBUG:
    # Show emails in the console during developement.
    EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

MAJOR_CAR_MODELS = [ 3, 4 ]
quality_thumbnail= 100 
INSERTED_PARTS = False
