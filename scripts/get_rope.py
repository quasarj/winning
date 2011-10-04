#!/usr/bin/env python
'''
Created on Sep 23, 2011

@author: QAJarosz
'''

import re


# open the Accoutning file, get the rope, place it in a new file

with open("masterra_savedvariables/TradeSkillMaster_Accounting.lua", "rb") as inf:
    text = inf.read()
    
grp = re.search("sellDataRope\"\] = (\".*\")", text)
if grp:
    rope = grp.group(1)
else:
    rope = None
    
    
with open("rope.py", "wb") as outfile:
    outfile.write("# coding: utf-8\n")
    outfile.write("rope = %s" % rope)
