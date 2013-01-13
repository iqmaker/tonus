# -*- coding: utf-8 -*-
from django.db import models
import datetime 
nowdate = datetime.datetime.now()

# Create your enum types here.
PAGE_CONTENT, PAGE_GROUP = 1, 2
PAGE_TYPE = [ 
    ( PAGE_CONTENT, u'Статья' ), 
    ( PAGE_GROUP, u'Категория' ),
]
APUBLISHED, ADRAFT, AREMOVED, AARCHIVE = 1, 2, 3, 4
ARTICLE_STATUS = [ 
    (APUBLISHED, 'Опубликована' ),
    (ADRAFT, 'Черновик' ),
    (AREMOVED, 'Удалена' ),
    (AARCHIVE, 'Архивная' ),
]

PERSENT_VALUE = [ (x, str(x)) for x in range(5, 101, 5) ]
FOUNDATION_YEAR = [ (x, str(x)) for x in range( nowdate.year + 3, 1850, -1) ]

SEDAN, HATCHBACK, WAGON, COUPE, SUV, PICKUP, CONVERTIBLE, ROADSTER, MINIVAN, VAN, MICROVAN, BUS, LIMOUSINE, TRUCK = [ x for x in range(1, 15) ]
BODY_TYPE = [ 
  (SEDAN, u'Седан'),
  (HATCHBACK, u'Хетчбек'),
  (WAGON, u'Универсал'),
  (COUPE, u'Купе'),
  (SUV, u'Внедорожник'),
  (PICKUP, u'Пикап'),
  (CONVERTIBLE, u'Кабриолет'),
  (ROADSTER, u'Родстер'),
  (MINIVAN, u'Минивэн'),
  (VAN, u'Фургон'),
  (MICROVAN, u'Микроавтобус'),
  (BUS, u'Автобус'),
  (LIMOUSINE, u'Лимузин'),
  (TRUCK, u'Грузовик'),
]

WHITE, SILVER, GRAY, YELLOW, ORANGE, BEIGE, GOLD, PINK,RED, VINOUS, BROWN, GREEN, BLUE, BLACK, PURPLE, AQUA, TURQUOISE = [ x for x in range(1, 18) ]
COLOR = (
  ( WHITE, u'Белый' ),
  ( SILVER, u'Серебристый' ),
  ( GRAY, u'Серый' ),
  ( YELLOW, u'Желтый' ),
  ( ORANGE, u'Оранжевый' ),
  ( BEIGE, u'Бежевый' ),
  ( GOLD, u'Золотой' ),
  ( PINK, u'Розовый' ),
  ( RED, u'Красный' ),
  ( VINOUS, u'Бордовый' ),
  ( BROWN, u'Коричневый' ),
  ( GREEN, u'Зеленый' ),
  ( BLUE, u'Синий' ),
  ( BLACK, u'Черный' ),
  ( PURPLE, u'Пурпурный' ),
  ( AQUA, u'Голубой' ),
  ( TURQUOISE, u'Бирюзовый' ),
)

KM, MILE = [1, 2]
MILEAGE_UNIT = (
  ( KM, u'км' ),
  ( MILE, u'миль' ),
)

KPP_MECHANIC, KPP_AUTO, KPP_VARIATOR = [ 1, 2, 3 ]
KPP_TYPE = ( 
  (KPP_MECHANIC, u'механическая'),
  (KPP_AUTO, u'автоматическая'),
  (KPP_VARIATOR, u'вариатор'),
)

RUB, DOLLAR, EURO = [ 1, 2, 3 ]
CURRENCY = (
  ( RUB, u'RUR' ),
  ( DOLLAR, u'$USD' ),
  ( EURO, u'€EURO' ),
)

TOURING_VERSION, SPORT_VERSION = 1, 2
EQUIPMENT = ( 
    ( TOURING_VERSION, u'Touring' ),
    ( SPORT_VERSION, u'Sport' ),
)

PETROL_INJECTOR, PETROL_CARBURETOR, PETROL_COMPRESSOR, PETROL_TURBINE, PETROL_ROTOR, DIESEL, DESEL_TURBINE, ELECTRIC, HYBRID = [1,2,3,4,5,6,7,8,9]
CAR_POWER = (
    (u'Бензиновый', (
                    (PETROL_INJECTOR, u'инжектор'),
                    (PETROL_CARBURETOR, u'карбюратор'),
                    (PETROL_COMPRESSOR, u'компрессор'),
                    (PETROL_TURBINE, u'с турбиной'),
                    (PETROL_ROTOR, u'ротороный')
                   )),
   (u'Дизельный',   (
                    (DIESEL, u'без турбины'),
                    (DESEL_TURBINE, u'с турбиной'),
                    )),
  (ELECTRIC, u'Электромобиль'),
  (HYBRID, u'Гибридный'),
)
