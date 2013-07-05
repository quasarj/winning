#!/usr/bin/env python

import json
import datetime
import os

import MySQLdb
import requests

import settings

def insertAuc(cursor, auc):
	ins_query = """
	insert into auctions
	values (
        %(auc)s, 
        %(timeLeft)s, 
        %(bid)s, 
        %(item)s, 
        %(owner)s, 
        %(buyout)s, 
        %(quantity)s
    )
	"""

	cursor.execute(ins_query, auc)



con = MySQLdb.connect(  settings.DATABASE_HOST,
						settings.DATABASE_USER,
					    settings.DATABASE_PASS,
						settings.DATABASE_DB )

cur = con.cursor()

# get the url and the lastmod time
info_data = requests.get("http://us.battle.net/api/wow/auction/data/whisperwind")

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


# if max_time is None or cur_time > max_time:
if True:
    print "Looks like new data, importing!"

    # add the cur_time to the db
    cur.execute("""
    insert into importtime values
    (null, %s)
    """, cur_time)

    #truncate the table
    cur.execute("truncate auctions")

    new_data = requests.get(url)

    with open('data/%s' % cur_time, 'w') as outp:
        outp.write(new_data.content)

    #-- This is for reading from a file for testing
    # with open("auctions.json") as inf:
    #     new_data = inf.read()

    # data = json.loads(new_data)

    data = json.loads(new_data.content)

    d = data['alliance']['auctions']

    for auc in d:
        insertAuc(cur, auc)

    # recalculate the price info
    # cur.callproc("generate_prices")

    # append price info to the history table
    # cur.callproc("add_history")

    con.commit() #make sure it's committed before export

#    print "Exporting data"
#    os.system('./export_auctions.sh')

else:
    print "Not loading. cur_time: %s, max_time: %s" % (cur_time, max_time)

con.close()


