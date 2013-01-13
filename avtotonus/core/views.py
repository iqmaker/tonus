# -*- coding: utf-8 -*-
# Create your views here.
import random
from django.template import Context, loader, RequestContext
from django.http import HttpResponse, HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.shortcuts import render_to_response, get_object_or_404
from django.http import Http404
from django.db.models import Avg, Max, Min, Count
from django.db import connections
from string import Template
from avtotonus.core.models import Page
from avtotonus.core.models import PagePicture
from avtotonus.core.models import Article
from avtotonus.core.models import CarModel
from avtotonus.core.models import Picture
from avtotonus.core.models import Modification
from avtotonus.core.models import Manufacture
from avtotonus.core.models import PartsGroup
from avtotonus.core.models import Parts
from avtotonus.core.models import Menu
from avtotonus.core.models import MenuItem
from avtotonus.core.models import PartsAlias
from avtotonus.core.models import PartsCompatible
from avtotonus.core.models import PartsComponent

import avtotonus.settings
from avtotonus.core.models import DBOUT, SQL
from enums import *


def getmenulist():
    menulist = Menu.objects.all()
    for i in menulist:
        i.items = MenuItem.objects.filter( menu=i.id )
    return menulist

def page_by_alias( alias ):
    try:
        page = Page.objects.get( urlname = alias )
    except:
        raise Http404
    return page

def picture_by_page( pictures ):
    uniqpict = [] 
    npictures = []
    for p in pictures:
        if p.page_id not in uniqpict:
            npictures.append( p )
            uniqpict.append( p.page_id )

    return npictures

def show_articles( request, page_number ):
    page = get_object_or_404( Article, pk=avtotonus.settings.MAIN_PAGE_ID )
    articles = Article.objects.filter( status=APUBLISHED ).exclude( 
            id__in=[ avtotonus.settings.MAIN_PAGE_ID, avtotonus.settings.CONTACT_PAGE_ID ] ) 

    page.description = ""
    page.body = ""
    page.title = "Статьи о запчастях"
    return render_to_response( 'core/articles.html', 
            { 'page': page,
              'articles': articles,
              'menulist': getmenulist(),
            }, context_instance=RequestContext(request) )

def show_article( request, urlname ):
    art = get_object_or_404( Article, pk=page_by_alias( urlname ).id )
    articles = Article.objects.filter( status=APUBLISHED ).values( 'id' )
    articles = [ x['id'] for x in articles ]

    try:
        pos = [ i for i, j in enumerate( articles ) if j == art.id ][0]
        next_articles = articles[ pos - 2: pos ] + articles[ pos + 1 : pos + 3 ] 
    except:
        next_articles = []
    
    return render_to_response( 'core/article.html', 
            { 'page': art,
              'menulist': getmenulist(),
              'settings': avtotonus.settings,
              'next_articles': Article.objects.filter( id__in=next_articles ).exclude(
                  id__in=[ avtotonus.settings.MAIN_PAGE_ID, avtotonus.settings.CONTACT_PAGE_ID ])[:4],
            }, context_instance=RequestContext(request) )

def index( request ):
    mainpage = get_object_or_404( Article, pk=avtotonus.settings.MAIN_PAGE_ID )
    groups = PartsGroup.objects.filter( status=APUBLISHED )
    models = CarModel.objects.filter( id__in=avtotonus.settings.MAJOR_CAR_MODELS, status=APUBLISHED   )
    DBOUT( models )
    for m in models:
        modifications = Modification.objects.filter( carmodel=m.id, status=APUBLISHED ) 
        m.pictures = picture_by_page( PagePicture.objects.filter( 
            page__in=modifications ) )[:4]

    return render_to_response( 'core/index.html', 
            { 'page' : mainpage, 
              'models': models,
              'menulist': getmenulist(),
              'settings': avtotonus.settings,
              'groups': groups,
            }, context_instance=RequestContext(request) )
            
def contacts( request ):
    contactpage = get_object_or_404( Article, pk=avtotonus.settings.CONTACT_PAGE_ID )
    return render_to_response( 'core/contacts.html', \
            { 'page' : contactpage, \
              'menulist': getmenulist(),
            }, context_instance=RequestContext(request) )

def show_model( request, urlname ):
    page = page_by_alias( urlname ) 
     
    groups = PartsGroup.objects.all()
    modifications = Modification.objects.filter( carmodel=page.id, status=APUBLISHED ) 
    pictures = PagePicture.objects.filter( page__in=modifications )
    
    return render_to_response( 'core/show_model.html', \
            { 'page' : page, \
              'menulist': getmenulist(),
              'settings': avtotonus.settings,
              'groups': groups,
              'modelimages': picture_by_page(pictures)[:4],
            }, context_instance=RequestContext(request) )

def show_modification( request, urlname ):
    page = page_by_alias( urlname ) 
    modificationimages = PagePicture.objects.filter( page=page.id )
    parts = Parts.objects.filter( modification=page.id, status=APUBLISHED )
    return render_to_response( 'core/show_modification.html',
            { 'page' : page, 
              'parts': parts, 
              'menulist': getmenulist(),
              'settings': avtotonus.settings,
              'modificationimages': modificationimages[:4],
            }, context_instance=RequestContext(request) )

def show_parts( request, urlname ):
    partid = page_by_alias( urlname ).id 
    parts = Parts.objects.get( pk=partid )
    partsimages = PagePicture.objects.filter( page=partid )
    groups = parts.group.filter( status=APUBLISHED )
    #parts_from_models = Parts.objects.filter( group=groups[0].id, \
    #        carmodel=parts.carmodel ).exclude( id=parts.id ) 
    carmodel = CarModel.objects.get( pk=parts.carmodel_id )
    partsgroups = PartsGroup.objects.filter( status=APUBLISHED )
    modifications = parts.modification.filter( status=APUBLISHED )

    aliases = PartsAlias.objects.filter( parts=partid )
    compatibles = PartsCompatible.objects.filter( parts=partid )
    components = PartsComponent.objects.filter( parts=partid )
    
    next_parts = Parts.objects.filter( group__in=groups, carmodel=carmodel, status=APUBLISHED  ).exclude( id=partid ).values( 'id' )
    next_parts= [ x['id'] for x in next_parts ]
    random.shuffle( next_parts )
    return render_to_response( 'core/show_parts.html', \
            { 'page' : parts, \
              'next_parts': Parts.objects.filter( id__in=next_parts[:4] ),
              'settings': avtotonus.settings,
              'carmodel': carmodel,
              'partsgroups': partsgroups,
              'partsimages': partsimages,
              'group': groups[0],
              'modifications': modifications,
              'menulist': getmenulist(),
              'aliases': aliases,
              'compatibles': compatibles,
              'components': components,
            }, 
            context_instance=RequestContext(request) )

def parts_by_model_group( request, groupurl, modelurl ):
    groupid = page_by_alias( groupurl ).id 
    modelid = page_by_alias( modelurl ).id
    parts = Parts.objects.filter( group=groupid, carmodel=modelid, status=APUBLISHED ) 

    """selecting first picture """
    for p in parts:
        p.body = p.body[:256] + '...'

    page = PartsGroup.objects.get( pk=groupid )
    partsgroups = PartsGroup.objects.filter( status=APUBLISHED )
    carmodel = CarModel.objects.get( pk=modelid )
    
    placeholders = { 'title':carmodel.title, 'en_title':carmodel.en_title }
    page.body = Template( page.body ).substitute( placeholders )
    return render_to_response( 'core/parts_by_model_group.html', \
            { 'page' : page, \
              'carmodel': carmodel,
              'menulist': getmenulist(),
              'partsgroups': partsgroups,
              'parts': parts,
              'settings':avtotonus.settings
            }, 
            context_instance=RequestContext(request) )

#выставляем соответствия id их алиасам в текущей базе данных вручную, т.к. так быстрее
icarmodel = { 'm3': 3, 'm6': 4 }
imodifications = { 'm3bks' : '15',
                  'm3bkh' : '14',
                  'm3bls' : '17',
                  'm3blh' : '16',
                  'm6ghs' : '19',
                  'm6ghh' : '18',
                  'm6ghw' : '20',
                  'm6skyactiv' : '21' } 

igroups = {  'optic':'28',
            'electric':'24',
            'engine':'5',
            'transmission':'6',
            'steering':'7',
            'exhaust':'8',
            'body':'9',
            'suspension':'10',
            'brake':'11',
            'fuel':'12',
            'interior':'13',
            'others':'29', 
            } 

from tools import trans, escape
import random
place_names = ['Химки, Москва', 'МО Химки', 'САО, Химки, Москва', 'Москва, Север, Химки',
        'Московская область, Химки', 'Химки, МО, Ленинградское шоссе', 'Ленинградское шоссе, Химки', 'Москва, САО', 'Москва, северный административный округ', 'Москва, Север']

buyer_names = ['Разборка в Химках', 'Разборка Мазда', 'Разборка Мазда 3', 'Разборка Мазда 6', 'Разборка Мазда 3 и Мазда 6','Разборка Mazda','Разборка Mazda 3','Разборка Mazda 6','Разборка mazda 3 и mazda 6','Магазин бу. запчастей для Мазда','Магазин бу. запчастей для мазда 3','Магазин бу запчастей для мазда 6','Магазин б/у запчастей для мазда 3 и мазда 6','Разбор мазда','Разбор мазда 3','Разбор мазда 6','Авторазбор мазда 3, мазда 6','Авторазбор мазда 3','Авторазбор мазда 6','Развал мазда 3','Развал мазда 6','Развал мазда 3 и мазда 6','Разборка мазда 3 в Химках','Разборка мазда 6 в Химках','Разборка мазда 6 и мазда 3 в Химках','Разборка мазда на Ленинградском шоссе','Разборка мазда 3 на Ленинградском шоссе', 'Разборка Мазда 6 на Ленинградском шоссе', 'Автозапчасти мазда в Химках', 'Автозапчасти мазда 3 в Химках', 'Автозапчасти Мазда 3 и Мазда 6 в Химках', 'Запчасти мазда 3 на Ленинградском шоссе', 'Запчасти мазда 6 на Ленинградском шоссе', 'Запчасти мазда 3 и мазда 6 на ленинградском шоссе', 'Запчасти бу. для мазда 3 в Химках', 'Запчасти бу для Мазда 6 в Химках', 'Запчасти (бу) для мазда 3 и мазда 6 в Химках', 'Запчасти с разборки для Mazda 3 и Mazda 6 в Химках' ]

buyer_phones = ['+7(916)730-34-73', '+7(916)7303473', '+7(916)730 34 73', '+7(916)73-034-73', '+7(916)730-3473', '8(916)730-34-73', '8(916) 730 34 73', '8-916-73-034-73', '8(916)7303473', '8(916)730-3473', '(916)730-3473', '(916)73-034-73', '(916)730-34-73', '(916)730 34 73']

def create_description( title ):
    result = {}
    result['place_name'] = random.choice( place_names )
    result['buyer_name'] = random.choice( buyer_names )
    result['phone'] = random.choice( buyer_phones )
    result['description'] = "%s, %s %s, тел:%s" % ( 
                            result['place_name'],
                            title,
                            result['buyer_name'],
                            result['phone'] )
    return result

def insert_parts():
    from tools.fullparts import allparts
    for i in allparts:
        r = create_description( i['title'] )
        p = Parts( title = i['title'],
                    code = None,
                    short_title = i['title'],
                    description = r['description'], 
                    place_name = r['place_name'],
                    phone = r['phone'],
                    buyer_name = r['buyer_name'],
                    body = i['template'],
                    preview_picture = 'internal/nophoto.png', 
                    status = APUBLISHED, 
                    pagetype = PAGE_CONTENT, 
                    used_price_min = i['used_price_min'],
                    used_price_max = i['used_price_max'],
                    manufacture = Manufacture.objects.get( pk=2 ),
                    carmodel = CarModel.objects.get(pk = icarmodel[ i['carmodel'] ])
                    )
        rmodifications = [ imodifications[x] for x in i['modifications'] ]
        rgroups = [ igroups[x]  for x in i['groups'] ]
        p.save()
        p.urlname = str(p.id) + '_' + escape.escape_to_folder( i['title'].decode('utf-8') )
        p.modification.add( *rmodifications )
        p.group.add( *rgroups )
        p.save()
        DBOUT( p.title )
        for a in i['alias']:
            pa = PartsAlias( title=a, parts=p )
            pa.save()

def create_parts( request ):
    if not avtotonus.settings.INSERTED_PARTS: 
        insert_parts() 
        avtotonus.settings.INSERTED_PARTS = True

    return index( request )
