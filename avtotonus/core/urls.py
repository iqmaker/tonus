# -*- coding: utf-8 -*-

from django.conf.urls import patterns, include, url
from django.views.generic import DetailView, ListView

from avtotonus.core.models import Page
from avtotonus.core.models import PagePicture
from avtotonus.core.models import Article
from avtotonus.core.models import CarModel
from avtotonus.core.models import Picture
from avtotonus.core.models import Modification
from avtotonus.core.models import Manufacture
from avtotonus.core.models import PartsGroup
from avtotonus.core.models import Parts

import avtotonus

urlpatterns = patterns('avtotonus.core.views',
    url(r'^$', 'index' ),
)
