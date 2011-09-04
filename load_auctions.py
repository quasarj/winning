#!/usr/bin/env python

import json
import datetime

import MySQLdb
import requests


def insertAuc(cursor, auc):
	ins_query = """
	insert into auctions
	values (%s, %s, %s, %s, %s, %s, %s)
	"""

	cursor.execute(ins_query, auc)



con = MySQLdb.connect(  host="localhost",
						user="quasar",
						passwd="theeyeofra",
						db="wow" )

cur = con.cursor()

# get the url and the lastmod time
info_data = requests.get("http://us.battle.net/api/wow/auction/data/auchindoun")

info = json.loads(info_data.content)

url = info['files'][0]['url']
lastMod = info['files'][0]['lastModified']

#print url
#print lastMod

cur_time = datetime.datetime.fromtimestamp(lastMod / 1000)

#get the most recent time from the db

cur.execute("""
select max(`time`) from importtime
""")

max_time = cur.fetchone()[0]


if cur_time > max_time:
    print "Looks like new data, importing!"

    # add the cur_time to the db
    cur.execute("""
    insert into importtime values
    (null, %s)
    """, cur_time)

    #truncate the table
    cur.execute("truncate auctions")

    new_data = requests.get(url)
    data = json.loads(new_data.content)

    d = data['alliance']['auctions']

    for auc in d:
        insertAuc(cur, list(auc.values()))

con.close()


