# -*- coding: utf-8 -*-
from django.conf.urls import patterns, include, url
from django.contrib import admin
import settings 

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^createparts/', 'avtotonus.core.views.create_parts' ),
    url(r'^$', 'avtotonus.core.views.index'),
    url(r'^core/', include('avtotonus.core.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^contacts.html$', 'avtotonus.core.views.contacts' ),
    url(r'^articles\-(?P<page_number>[0-9]+).html$', 'avtotonus.core.views.show_articles' ),
    url(r'^article/(?P<urlname>[0-9A-Za-z-_.//]+).html$', 'avtotonus.core.views.show_article' ),
    url(r'^model/(?P<urlname>[0-9A-Za-z-_.//]+).html$', 'avtotonus.core.views.show_model' ),
    url(r'^modification/(?P<urlname>[0-9A-Za-z-_.//]+).html$', 'avtotonus.core.views.show_modification' ),
    url(r'^parts/(?P<urlname>[0-9A-Za-z-_.//]+).html$', 'avtotonus.core.views.show_parts' ),
    url(r'^group/(?P<groupurl>[0-9A-Za-z-_.//]+)/(?P<modelurl>[0-9A-Za-z-_.//]+).html$', 'avtotonus.core.views.parts_by_model_group' ),
)

if settings.DEBUG:
    urlpatterns += patterns('',
    (r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT }),)
