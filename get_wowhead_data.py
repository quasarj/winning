#!/usr/bin/env python

import xml.etree.ElementTree
import time

import requests
import MySQLdb

import settings

def getItemInfo(item_id):

	#get it from the server
	r = requests.get('http://www.wowhead.com/item=%s&xml' % item_id)

	item = xml.etree.ElementTree.fromstring(r.content)

	item_table = {}
	craft_table = None


	item_table['id'] = item.find("item").attrib["id"]

	item_table['name'] = item.find("item/name").text

	item_table['level'] = item.find("item/level").text

	item_table['quality'] = item.find("item/quality").attrib['id']

	item_table['class'] = item.find("item/class").attrib['id']
	item_table['subclass'] = item.find("item/subclass").attrib['id']
	item_table['tooltip'] = item.find("item/htmlTooltip").text
	item_table['icon_id'] = item.find("item/icon").attrib['displayId']
	item_table['icon'] = item.find("item/icon").text


	created_by = item.find("item/createdBy/spell")
	if created_by is not None:
		craft_table = []
		created_by_id = created_by.attrib["id"]

		reagents = list(created_by.iter("reagent"))

		for i in reagents:
			#print i.attrib["name"]a
			i.attrib['item_id'] = item_table['id']
			craft_table.append(i.attrib)

	return item_table, craft_table


def insertItem(cursor, item_table):
	ins_query = """
	insert into item_info
	values (%s, %s, %s, %s, %s, %s, %s, %s, %s)
	"""

	i = item_table
	cursor.execute(ins_query, [i['id'],
							   i['name'],
							   i['level'],
							   i['class'],
							   i['subclass'],
							   i['quality'],
							   i['icon'],
							   i['icon_id'],
							   i['tooltip']] )


def insertCrafting(cursor, craft_table):
	ins_query = """
	insert into craft
	values (%s, %s, %s, %s)
	"""
	
	for item in craft_table:
		cursor.execute(ins_query, [item['item_id'],
								   item['id'],
								   item['quality'],
								   item['count']] )

con = MySQLdb.connect(  settings.DATABASE_HOST,
                        settings.DATABASE_USER,
                        settings.DATABASE_PASS,
                        settings.DATABASE_DB )

cur = con.cursor()
# Get a list of items that lack wowhead info
cur.execute("""
SELECT price.item

FROM
    price

left join item_info on item_info.id = price.item

where item_info.id is null
""")
missing_items = cur.fetchall()

count = 0
for item in missing_items:
	count += 1
	if (count % 100) == 0:
		print "-- Sleeping 15 seconds to let Wowhead rest"
		time.sleep(15)

	#print item[0]
	#continue

	items, crafting = getItemInfo(item[0])   #52185)

	insertItem(cur, items)
	if crafting is not None:
		insertCrafting(cur, crafting)

	print "Added item: %s" % items['name']

con.close()


