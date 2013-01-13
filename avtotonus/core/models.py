# -*- coding: utf-8 -*-
from django import template
from django.db import models
from django.template import Library
from django.contrib.auth.models import User
from tinymce.widgets import TinyMCE
from enums import *
import avtotonus.settings
from django.core.files.storage import FileSystemStorage

import Image
import os
import re
import inspect

from django.db import connections
def DBOUT( obj ):
    """Print Object in standard output with the current line number of source code."""
    print "|----------------|>: ", obj, ' LINE:', inspect.currentframe().f_back.f_lineno

def SQL():
    DBOUT( connections['default'].queries )

register = Library()

def thumbnail(ifile, size='200x200'):
    x, y = [int(x) for x in size.split('x')]
    
    #defining the filename and the miniature filename
    basename, format = ifile.rsplit('.', 1)
    miniature = basename + '_' + size + '.' +  format
    miniature_filename = os.path.join(avtotonus.settings.MEDIA_ROOT, miniature)
    miniature_url = os.path.join(avtotonus.settings.MEDIA_URL, miniature)
    # if the picture wasn't already resized, resize it
    if not os.path.exists(miniature_filename):
        print '---|> debug: resizing the picture to the format %s!' % size
        filename = os.path.join(avtotonus.settings.MEDIA_ROOT, ifile)
        picture = Image.open(filename)
        picture.thumbnail([x, y], Image.ANTIALIAS) # generate a 200x200 thumbnail
        picture.save(miniature_filename, picture.format)
    return miniature_url

register.filter(thumbnail)

class Picture( models.Model ):
    title = models.CharField( max_length=250, verbose_name=u'Название' )
    pub_date = models.DateTimeField(verbose_name=u'Дата публикации', auto_now_add=True)
    picture = models.ImageField(verbose_name=u'Изображение', upload_to='pictures', \
            max_length=250 , blank=True, null=True )

    def get_picture_filename(self):
        return os.path.join(avtotonus.settings.MEDIA_ROOT, str(self.picture) )

    def get_picture_url(self):
      return os.path.join( avtotonus.settings.MEDIA_URL, str(self.picture) )
    
    def render_picture( self, filename ):
      picture_path = os.path.join(avtotonus.settings.MEDIA_URL, filename )
      picture_path = picture_path.replace('\\','/') # Windows-Fix
      result = '<a href="'+ str(self.id) +'/"><img src="'+ str(picture_path) +'"/></a>'  
      return result
    
    def thumbnail_url( self ):
      try:
        thumb_path = thumbnail( str(self.picture), '160x160')
      except Exception, e:
        print e
      return thumb_path 

    def thumbnail_url_small( self ):
      try:
        thumb_path = thumbnail( str(self.picture), '48x48')
      except Exception, e:
        print e
      return thumb_path 

    def get_thumbnail(self):
      try:
        thump_path = thumbnail( str(self.picture), '160x160')
      except Exception, e:
        print e
      return self.render_picture( thump_path )
    
    get_thumbnail.short_description = 'Миниатюра'
    get_thumbnail.allow_tags = True
    
    def preview_picture_url(self):
      return self.render_picture( str(self.picture_url) )
    
    preview_picture_url.short_description = 'Миниатюра'
    preview_picture_url.allow_tags = True
    
    def __unicode__(self):
        return self.title
    
    class Meta:
        verbose_name = u"Изображение"
        verbose_name_plural = u"Изображения"


class Page ( models.Model ):
    title = models.CharField( max_length=512, verbose_name=u'Заголовок' )
    short_title = models.CharField( max_length=128, verbose_name=u'Короткий заголовок', blank=True, null=True )
    description = models.TextField( verbose_name=u'Краткое описание' )
    intro_text = models.TextField( verbose_name=u'Введение', blank=True, null=True  )
    body = models.TextField( verbose_name=u'Страница в формате html', blank=True, null=True )
    urlname = models.CharField( max_length=256, verbose_name=u'Url', blank=True, null=True )
    preview_picture = models.FileField(verbose_name=u'Изображение для предпросмотра', upload_to='pictures', \
            max_length=250 , blank=True, null=True )
    status = models.IntegerField( choices=ARTICLE_STATUS, verbose_name=u'Статус', \
            default=APUBLISHED )
    pagetype = models.IntegerField( choices=PAGE_TYPE, verbose_name=u'Тип', \
            default=PAGE_CONTENT )
    reg_date = models.DateField( verbose_name=u'Дата создания', blank=True, null=True, \
            auto_now_add=True )
    last_editing = models.DateField( verbose_name=u'Дата последней коррекции', \
            blank=True, null=True, auto_now_add=True )
    owner =  models.ForeignKey( User, verbose_name=u'Автор', default='1', blank=True, null=True )

    def thumbnail_url( self ):
      try:
        thumb_path = thumbnail( str(self.preview_picture), '160x160')
      except Exception, e:
        print e
      return thumb_path 

    def thumbnail_url_small( self ):
      try:
        thumb_path = thumbnail( str(self.preview_picture), '48x48')
      except Exception, e:
        print e
      return thumb_path 

    class Meta:
        verbose_name = u"Страница сайта"
        verbose_name_plural = u"Страницы сайта"

    def __unicode__(self):
        return self.title

class PagePicture( Picture ):
    page = models.ForeignKey( Page, verbose_name=u"Страница" )

    class Meta:
      verbose_name = u"Фото/изображение для страницы"

class Article( Page ):
    parent = models.ForeignKey('self', verbose_name=u'Вышестоящая статья', \
            related_name='master_page' , blank=True, null=True )
    class Meta:
        verbose_name = u"Статья"
        verbose_name_plural = u"Статьи"
        
    def __unicode__(self):
        return self.title

class Manufacture( Page ):
    en_title = models.CharField( max_length=64, verbose_name=u'Англоязычное название' )
    
    def __unicode__(self):
        return self.en_title
      
    class Meta:
        verbose_name = u"Марка автомобиля"
        verbose_name_plural = u"Марки автомобилей"
    
    def file_name( self ):
        fname = re.sub( '\.|\-|\(|\)', ' ', self.en_title ).strip().lower().split()
        fname = '_'.join( fname )
        return fname
        
    def url_name( self ):
        return self.file_name().replace( '_', '-' )
        
    def logo_location( self, size ):
        location = os.path.join( avtotonus.settings.MEDIA_ROOT, 'images/manufactures' )
        location = os.path.join( location, size )
        location = os.path.join( location, self.file_name() + '.png' )
        return location
        
    def logo_url( self, size ):
        location = os.path.join( avtotonus.settings.MEDIA_URL, 'images/manufactures' )
        location = os.path.join( location, size )
        location = os.path.join( location, self.file_name() + '.png' ) 
        return location
      
    def logo_url_mini( self ):
        return self.logo_url( 'mini' )
        
    def logo_url_small( self ):
        return self.logo_url( 'small' )
        
    def logo_root_mini( self ):
        return self.logo_location( 'mini')
        
    def render_picture( self, filename ):
        picture_path = os.path.join(avtotonus.settings.MEDIA_URL, filename )
        picture_path = picture_path.replace('\\','/') # Windows-Fix
        result = '<img src="%s"/></a>' % picture_path
        return result
      
    def get_thumbnail(self):
        return self.render_picture( self.logo_url_mini() )
    
    get_thumbnail.short_description = 'Логотип'
    get_thumbnail.allow_tags = True

class CarModel( Page ):
    manufacture = models.ForeignKey( Manufacture, verbose_name=u'Марка' )
    en_title = models.CharField( max_length=64, verbose_name=u'Англоязычное название' )
    
    def file_name( self ):
        fname = re.sub( '\.|\-|\(|\)', ' ', self.en_title ).strip().lower().split()
        fname = '_'.join( fname )
        return fname
        
    def url_name( self ):
        return self.file_name().replace( '_', '-' )
        
    def __unicode__(self):
        return self.en_title
      
    class Meta:
        verbose_name = u"Модель автомобиля"
        verbose_name_plural = u"Модели автомобилей"

      
class Modification( Page ):
    manufacture = models.ForeignKey( Manufacture, verbose_name=u'Марка автомобиля' )
    carmodel = models.ForeignKey( CarModel, verbose_name=u'Модель автомобиля' )
    en_title = models.CharField( max_length=150, verbose_name=u'Англоязычное название')
    body_type = models.IntegerField( choices=BODY_TYPE,  verbose_name=u'Тип кузова' )
    from_year = models.IntegerField( choices=FOUNDATION_YEAR, \
            verbose_name=u'Год (с какого)', null=True, blank=True )
    to_year = models.IntegerField( choices=FOUNDATION_YEAR,\
            verbose_name=u'Год (по какой)', null=True, blank=True )
    transmission = models.IntegerField( verbose_name=u'Коробка передач',\
    blank=True, null=True, choices=KPP_TYPE )
    engine_size = models.IntegerField(  verbose_name=u'Объем двигателя (см^3)',\
            blank=True, null=True )
    car_power = models.IntegerField( verbose_name=u'Двигатель',\
            blank=True, null=True, choices=CAR_POWER )
    equipment = models.IntegerField( verbose_name=u'Комплектация', \
            choices=EQUIPMENT, blank=True, null=True )

    def __unicode__(self):
      return self.title
    
    class Meta:
        verbose_name = u"Модификация модели автомобиля"
        verbose_name_plural = u"Модификации марки автомобиля"

class PartsGroup( Page ):

    def __unicode__(self):
      return self.title
    
    class Meta:
        verbose_name = u"Группа запчастей"
        verbose_name_plural = u"Группы запчастей"

class Component( models.Model ):
    code = models.CharField( max_length=128, verbose_name=u'Код' )
    title = models.CharField( max_length=256, verbose_name=u'Название' )

    def __unicode__(self):
        return self.title
      
    class Meta:
        verbose_name = u"Компонент"
        verbose_name_plural = u"Компоненты"

class Parts( Page ):
    code = models.CharField( max_length=128, verbose_name=u'Код детали', \
            blank=True, null=True  )
    price = models.FloatField( verbose_name=u'Средняя цена нового оригинала', \
            blank=True, null=True  )
    used_price_min = models.FloatField( verbose_name=u'Цена от', blank=True, null=True  )
    used_price_max = models.FloatField( verbose_name=u'Цена до', blank=True, null=True  )
    place_name = models.CharField(max_length=256,verbose_name=u'Город',
            blank=True,null=True, default=avtotonus.settings.CITY  )
    phone = models.CharField( max_length=128, verbose_name=u'Телефон',
            blank=True,null=True, default=avtotonus.settings.PHONE )
    buyer_name = models.CharField( max_length=128, verbose_name=u'Продавец',
            blank=True,null=True, default=avtotonus.settings.BUYER_NAME )
    manufacture = models.ForeignKey( Manufacture, verbose_name=u'Марка автомобиля' )
    carmodel = models.ForeignKey( CarModel, verbose_name=u'Модель автомобиля' )
    modification = models.ManyToManyField( Modification, \
            verbose_name=u'Совместимость с авто' )
    group = models.ManyToManyField( PartsGroup, verbose_name=u'Группа автозапчастей' ) 
    
    def __unicode__(self):
        return self.title
      
    class Meta:
        verbose_name = u"Автозапчасть"
        verbose_name_plural = u"Автозапчасти"

class PartsAlias( models.Model ):
    title = models.CharField( max_length=128, verbose_name=u'Псевдоним' )
    parts = models.ForeignKey( Parts, verbose_name=u"Автозапчасть" )

    class Meta:
        verbose_name = u"Псевдоним запчасти"
        verbose_name_plural = u"Псевдонимы запчасти"

    def __unicode__(self):
        return self.title

class PartsCompatible(  models.Model ):
    code = models.CharField( max_length=128, verbose_name=u'Код детали' )
    parts = models.ForeignKey( Parts, verbose_name=u"Автозапчасть" )

    class Meta:
        verbose_name = u"Аналог, заменитель совместимая деталь"
        verbose_name_plural = u"Аналоги, заменители совместимые детали"

    def __unicode__(self):
        return self.code

class PartsComponent( models.Model ):
    code = models.CharField( max_length=128, verbose_name=u'Код' )
    title = models.CharField( max_length=256, verbose_name=u'Название' )
    price = models.FloatField( verbose_name=u'Средняя цена нового оригинала', \
            blank=True, null=True  )
    parts = models.ForeignKey( Parts, verbose_name=u"Автозапчасть" )

    class Meta:
        verbose_name = u"Составляющая деталь"
        verbose_name_plural = u"Составляющие компоненты"
        
    def __unicode__(self):
        return self.code + '-' + self.title

class Menu( models.Model ):
    title = models.CharField( max_length=250, verbose_name=u'Название' )
    alias = models.CharField( max_length=64, verbose_name=u'Псевдоним латиница' )

    class Meta:
        verbose_name = u"Меню"
        verbose_name_plural = u"Меню"
      
    def __unicode__(self):
        return self.title

class MenuItem( models.Model ):
    menu = models.ForeignKey( Menu, verbose_name=u'Меню' ) 
    title = models.CharField( max_length=250, verbose_name=u'Название' )
    urlname = models.CharField( max_length=512, verbose_name=u'Ссылка на источник' )
    isactive = models.BooleanField( default=True, verbose_name=u'Активна' )
    ordernumber = models.IntegerField( default=0, verbose_name=u'Номер по порядку' ) 

    class Meta:
        verbose_name = u"Пункт меню"
        verbose_name_plural = u"Пункт меню"
      
    def __unicode__(self):
        return self.title

