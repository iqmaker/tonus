# -*- coding: utf-8 -*-
import re
from avtotonus.core.models import Page
from avtotonus.core.models import PagePicture
from avtotonus.core.models import Article
from avtotonus.core.models import CarModel
from avtotonus.core.models import Modification
from avtotonus.core.models import Manufacture
from avtotonus.core.models import PartsGroup
from avtotonus.core.models import Parts
from avtotonus.core.models import Menu 
from avtotonus.core.models import MenuItem

from avtotonus.core.models import PartsAlias
from avtotonus.core.models import PartsCompatible
from avtotonus.core.models import PartsComponent

from django.contrib import admin
from tools import trans, escape

from django.forms import TextInput, Textarea
from django.db import models

class InlinePagePicture(admin.TabularInline):
    model = PagePicture
    extra = 1

class InlineMenuItem( admin.TabularInline ):
    model = MenuItem
    extra = 1

class InlinePartsAlias(admin.TabularInline):
    model = PartsAlias
    extra = 1

class InlinePartsComponent(admin.TabularInline):
    model = PartsComponent
    extra = 1

class InlinePartsCompatible(admin.TabularInline):
    model = PartsCompatible
    extra = 1

class MenuAdmin( admin.ModelAdmin ):
    list_display = ( 'title', 'alias' )
    inlines = [ InlineMenuItem, ]

class PageAdmin( admin.ModelAdmin ):
    list_display = ( 'short_title', 'status', 'reg_date', 'last_editing', 'owner' )
    list_filter = ( 'reg_date', 'status' ) 
    date_hierarchy = 'reg_date'
    ordering = ('-reg_date',)

    fieldsets = [
            ( None, { 'fields': [ 'title', 'short_title', 'pagetype', 'description', 'intro_text', 'preview_picture', 'body', \
                    'status', 'owner', 'urlname'] }),
    ]
    inlines = [ InlinePagePicture, ]

    def save_model(self, request, obj, form, change):
        if request.POST.get('urlname').strip() == "" and obj.id:
            obj.urlname = str(obj.id) + '_' + escape.escape_to_folder( request.POST.get('title') )
            obj.save()
        elif request.POST.get('urlname').strip() == "" and not obj.id:
            obj.urlname = 'temporary'
            obj.save()
            obj.urlname = str(obj.id) + '_' + escape.escape_to_folder( request.POST.get('title') )
            obj.save()
        else:
            obj.save()
        
class PartsAdmin( PageAdmin ):
    list_display = ( 'short_title', 'code', 'price', 'used_price_min', 'reg_date' )
    list_filter = ( 'carmodel', 'modification','group', 'reg_date', 'status' ) 
    fieldsets = [
            ( None, { 'fields': [ 'title', 'short_title', 'pagetype', 'preview_picture', 'code', ('used_price_min', 'used_price_max', \
                    'price'), 'description', 'place_name', 'phone', 'buyer_name', 'body', 'manufacture', 'carmodel', 'modification', 'group', 'status',\
                    'owner', 'urlname'] }),
    ]
    inlines = [ InlinePagePicture, InlinePartsCompatible, InlinePartsComponent, InlinePartsAlias ]
    filter_horizontal = ('group', 'modification', )

class ArticleAdmin( PageAdmin ):
    """formfield_overrides = {
        models.CharField: {'widget': TextInput(attrs={'size':'256'})},
        models.TextField: {'widget': Textarea(attrs={'rows':4, 'cols':80})},
    }"""
    raw_id_fields = ("parent",)
    fieldsets = [
            ( None, { 'fields': [ 'title', 'short_title', 'pagetype', 'description', 'intro_text', 'body', 'preview_picture', \
                    'status', 'parent', 'owner', 'urlname'] }),
    ]
    inlines = [ InlinePagePicture, ]

class PartsGroupAdmin( PageAdmin ):
    list_display = ( 'short_title', 'status', 'reg_date' )

class ManufactureAdmin( PageAdmin ):
    list_display = ( 'short_title', 'reg_date' ) 
    fieldsets = [
            ( None, { 'fields': [ 'title', 'short_title', 'pagetype', 'en_title', 'description', 'preview_picture', \
                    'body', 'status', 'owner', 'urlname'] }),
    ]

class CarModelAdmin( PageAdmin ):
    list_display = ( 'title', 'en_title', 'manufacture', 'reg_date' ) 
    fieldsets = ( None, { 'fields': [ 'title', 'short_title', 'pagetype', 'en_title', 'manufacture', 'description', 'intro_text', 'preview_picture', 'body', 'status', 'owner', 'urlname'] }),
    inlines = [ InlinePagePicture, ]
   
def copy_object( modeladmin, request, queryset ):
    for i in queryset:
        i.pk = None
        i.id = None
        i.urlname = None
        i.save()

copy_object.short_description = u'Копировать объект'
copy_object.allow_tags = True

class ModificationAdmin( PageAdmin ):
    list_display = ( 'id', 'short_title', 'manufacture', 'carmodel', 'en_title', 'body_type', 'from_year', \
            'to_year', 'transmission', 'engine_size', 'car_power', 'equipment' ) 
    fieldsets = [
            ( u'Параметры модификации автомобиля', { 'fields': [ ('title', 'short_title', 'en_title', 'pagetype'), \
                    ('manufacture', 'carmodel', 'from_year', 'to_year', 'equipment'), \
                    ('body_type',  'transmission','engine_size', 'car_power') ] }),
            ( u'Параметры страницы', { 'fields': [ 'description', 'preview_picture', \
                    'body', 'status', 'owner', 'urlname'] }),
    ]
    inlines = [ InlinePagePicture, ]
    actions = [ copy_object, ]

admin.site.register( Article, ArticleAdmin )
admin.site.register( PartsGroup, PartsGroupAdmin )
admin.site.register( Manufacture, ManufactureAdmin )
admin.site.register( CarModel, CarModelAdmin )
admin.site.register( Modification, ModificationAdmin )
admin.site.register( Parts, PartsAdmin )
admin.site.register( Menu, MenuAdmin )
