# -*- coding: utf-8 -*-
import json
"""
 Mazda 3 Modifications vin
 1.6 Hatchback BK mechanic (2006-2009) JMZBK14Z281685357, JMZBK14Z291821298, JMZBK14Z281642356, JMZBK14Z281716386
 1.6 Hatchback BK automatic (2006-2009) JMZBK14Z581750958, JMZBK14Z591760053,JMZBK14Z591767474 
 2.0 Hatchback BK mechanic (2006-2009)
 2.0 Hatchback BK automatic (2006-2009) JMZBK14F591822106, JMZBK14F581751799
 2.0 Hatchback Sport BK (2006-2009) JMZBK14F591822106, JMZBK14F581751799
 
 1.6 sedan BK mechanic (2006-2009) JMZBK12Z201783331, JMZBK12Z281717404
 1.6 sedan BK automatic (2006-2009) JMZBK127571595376, JMZBK12Z581667847, JMZBK12Z581680701, JMZBK122581686405, JMZBK12Z501794251, JMZBK12Z501753290, JMZBK12Z501760401, JMZBK12Z581715972
 2.0 sedan BK mechanic (2006-2009)
 2.0 sedan BK automatic (2006-2009) JMZBK12F501804758
 2.0 sedan Sport BK (2006-2009) JMZBK12F501804758

 1.6 Hatchback Diesel mechanic (2009-2012) JMZBL14Y201100218 
 1.6 Hatchback BL mechanic (2009-2012) JMZBL14Z201264924
 1.6 Hatchback BL automatic (2009-2012) JMZBL14Z511502764
 2.0 Hatchback BL automatic (2009-2012)
 1.6 Sedan BL mechanic (2009-2012) JMZBL12Z211513496
 1.6 Sedan BL automatic (2009-2012) JMZBL12Z501265222, JMZBL12Z511520131
 2.0 Sedan BL automatic (2009-2012)

 Mazda 6
 1.8 Wagon GH Mechanic (2007-2008) JMZGH198201207237
 2.0 Wagon GH Automatic (2007-2008) JMZGH19F701168398
 1.8 Hatchback GH mechanic (2007-2008) JMZGH128201167475
 2.0 Hatchback GH automatic (2007-2008) JMZGH14F701197574, JMZGH14F701189710
 2.0 Hatchback GH mechanic (2007-2008) JMZGH12F681105723, JMZGH14F601198441
 1.8 Sedan GH mechanic (2007-2008) JMZGH128201218587 
 2.0 Sedan GH automatic (2007-2008) JMZGH12F701183004
 2.5 Sedan GH mechanic (2007-2008) JMZGH12L681103694, JMZGH12L601218846
 2.5 Hatchback GH mechanic (2007-2008) JMZGH14L601197081
 
 1.8 Sedan GH mechanic (2009-2012) JMZGH128211443284, JMZGH128211433748
 2.0 Hatchback GH automatic (2009-2012) JMZGH14F701445825
 2.5 Hatchback Sport GH automatic (2009-2012) JMZGH12F701183004
 2.5 Hatchback GH automatic (2009-2012) JMZGH12F701183004
 2.0 Sedan GH automatic (2009-2012) JMZGH12F701432032, JMZGH12F701440019
 2.5 Sedan Automatic (2009-2009) JMZGHA2L701402231, JMZGHAZL701428612
 2.5 Sedan Sport GH automatic (2009-2012) JMZGHA2L701402231

 2.0 Sedan SKYACTIV automatic (2013-2015) JMZKE489780013697, JMZKE489780013014
 
 запомнитЬ, что мы делаем объявления информационные с целью привлечь потенциального покупателя, а не продать именно эту запчасть, т.е. должнать быть информационная составляющая у объявления. Использовать слова: оригинал, бу, разборка, авторазборка.
"""
manufacture = {'mazda':'мазда'}
carmodels = { 'm3':'мазда 3', 'm6':'мазда 6' }

bodycode = { 'bk':'BK (2003-2009)', 'bl':'BL (2009-2013)', 'gh':'GH (2008-2013)', 'skyactiv':'SKYACTIV (2013-2015)' }

bodytype = { 's':'седан', 
                    'h':'хэтбчек',
                    'w':'универсал'}

engine = { '1.6':'1.6', '1.8':'1.8', '2.0':'2.0', '2.2':'2.2', '2.5':'2.5' }
transmission = { 'a':'автомат (акпп)', 'm':'механика (мкпп)' } 

modifications = { 'm3bks' : 'Мазда 3 BK Sedan (Saloon) Седан (2003-2009)',
                  'm3bkh' : 'Мазда 3 BK Hatchback (Хэтчбек) (2003-2009)',
                  'm3bls' : 'Мазда 3 BL Sedan (Saloon) Седан (2010-2013)',
                  'm3blh' : 'Мазда 3 BL Hatchback (Хэтчбек) (2010-2013)',
                  'm6ghs' : 'Мазда 6 GH Sedan (Saloon) Седан (2008-2012)',
                  'm6ghh' : 'Мазда 6 GH Hatchback (Хэтчбек) (2008-2012)',
                  'm6ghw' : 'Мазда 6 GH Wagon (Универсал) (2008-2012)',
                  'm6skyactiv' : 'Мазда 6 SKYACTIV (2012-н.в)' } 

groups = {  'optic':'оптика',
            'electric':'электрика',
            'engine':'двигатель',
            'transmission':'кпп',
            'steering':'рулевое управление',
            'exhaust':'выхлопная система',
            'body':'кузовные детали',
            'suspension':'подвеска',
            'brake':'тормозная система',
            'fuel':'топливная система',
            'interior':'интерьер',
            'others':'разное', 
            } 
           
alias = {}
alias.update( manufacture )
alias.update( carmodels )
alias.update( bodycode ) 
alias.update( bodytype ) 
alias.update( engine ) 
alias.update( transmission )
alias.update( modifications )
alias.update( groups )


import itertools
import parts
from string import Template 
def xinbook( book, items, result_list ):
    for b in book:
        if b in items:
            result_list.append( b )
            break

def modifications_form_items( items ):
    result_modification = []
    xinbook( carmodels, items, result_modification ) 
    xinbook( bodycode, items, result_modification ) 
    xinbook( bodytype, items, result_modification ) 
    base = ''.join( result_modification )
    part_modifications = []
    for m in modifications:
        if m.find( base ) == 0:
            part_modifications.append( m )
    #print part_modifications
    return part_modifications

def gentoken( word, items ):
    words = []
    for i in items:
        n = i
        if i in alias:
            n = alias[i]
        words.append( n ) 
    token = word + ' ' + ' '.join( words )
    return token

def fill_placeholders( key, plh, result_items, sitem ):
    #test values
    plh['newprice'] = '350000 р'
    plh['usedprice'] = '5000 р'
    plh['key'] = key
    plh['product'] = gentoken( key,result_items ) 

    for ri in result_items:
        if ri in manufacture:
            plh['manufacture'] = manufacture[ri]
        if ri in carmodels:
            plh['model'] = carmodels[ri]
        if ri in bodycode:
            plh['bodycode'] = bodycode[ri]
        if ri in bodytype:
            plh['bodytype'] = bodytype[ri]
        if ri in engine:
            plh['engine'] = engine[ri]
        if ri in transmission:
            plh['transmission'] = transmission[ri]
        if ri in modifications:
            plh['modifications'] = modifications[ri]
        if ri in groups:
            plh['groups'] = groups[ri]

    
def generate_names( key, rules, sitem ):
    frules = []
    for item in rules:
        l = [ x.strip() for x in item.split(',')]
        frules.append( l )
    gent = []
    for x in itertools.product( *frules ):
        plh = { k:'' for k in parts.placeholders }
        fill_placeholders( key, plh, x, sitem )
        token = {}
        token['groups'] = sitem[1]['groups']
        token['alias'] = sitem[1]['alias']
        token['title'] = plh['product'].strip() 
        token['template'] = Template( sitem[1]['template'] ).substitute( plh ).strip()
        token['carmodel'] = x[0] 
        token['modifications'] = modifications_form_items( x ) 
        token['used_price_min'] = 0.0
        token['used_price_max'] = 0.0
        gent.append( token )
    return gent

def serialize_parts( all_parts ):
    dump = json.dumps( all_parts, sort_keys=True, indent=4, ensure_ascii=False )
    print "# -*- coding: utf-8 -*-"
    print "allparts = %s" % dump

def create_parts():
    all_parts = []
    for item in parts.parts.items():
        key, val = item[0], item[1]['tokens']
        for rules in val:
            all_parts.extend( generate_names( key, rules, item ) ) 
    serialize_parts( all_parts )
    return all_parts

def main():
    create_parts()

if __name__ == "__main__":
    main()
