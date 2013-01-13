# -*- coding: utf-8 -*-
template = """ 
        "%s" : {
        'tokens' : [ [ ], ], 
        'groups' : [],
        'modifications' : [],
        'alias': [],
        'template': \"\"\"

        \"\"\"}, """

print "tokens = {" 
for i in open( 'ww.txt' ):
    print template % ( i.strip() ) 
print "}" 

    

