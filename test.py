#!/usr/bin/python

import json

import requests

info_data = requests.get("http://us.battle.net/api/wow/auction/data/auchindoun")

info = json.loads(info_data.content)

url = info['files'][0]['url']
lastMod = info['files'][0]['lastModified']

print url
print lastMod
