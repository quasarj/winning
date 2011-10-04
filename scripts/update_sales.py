#!/usr/bin/env python

'''
Created on Sep 23, 2011

@author: QAJarosz
'''

import time
import MySQLdb

import rope


def getItemID(encoded_string):
    if encoded_string[0] == 'x':
        return decode(encoded_string[1:])
    
    colorCode, itemCode, name = encoded_string.split("|")
    return decode(itemCode)

def decode(string):
    """decode numerical values from TSM's encode function"""

    alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_="
    base = len(alpha)
    
    #if it contains an ~ then return None
    if string.find("~") == 0: return None
    
    result = 0
    i = len(string) - 1
    for char in string:
        result += (alpha.find(char)) * (base**i)
        i -= 1
        
    return result

def processSaleData(sellDataRope):
    
    saleData = {}
    
    for itemData in sellDataRope.split("?"):
        encodedItem, encodedRecords = itemData.split("!")
        itemID = getItemID(encodedItem)
        #print itemID
        
        saleData[itemID] = []
    
        for record in encodedRecords.split("@"):
            #split up the record, make a dict, append that
            stackSize, quantity, sTime, price, otherPerson, player = record.split("#")
            
            saleData[itemID].append({   'stackSize': decode(stackSize),
                                        'quantity': decode(quantity),
                                        'sTime': time.localtime(decode(sTime)),
                                        'price': decode(price),
                                        'otherPerson': otherPerson,
                                        'player': player
                                     })
    return saleData

def insertToDB(saleData):
    #connect to the db
    con = MySQLdb.connect( host="quasarj.com",
                           user="quasar",
                           passwd="theeyeofra",
                           db="wow")
    
    cur = con.cursor()
    
    for item,sales in saleData.items():
        print item,
        for sale in sales:
            print ".",
            try:
                cur.execute("insert into sale values (%s, %s, %s, %s, %s, %s, %s)", 
                            (item, 
                             time.strftime('%Y-%m-%d %H:%M:%S', sale['sTime']), 
                             sale['otherPerson'], 
                             sale['player'],
                             sale['price'],
                             sale['stackSize'],
                             sale['quantity']
                             ))
            except MySQLdb.IntegrityError:
                pass
        print
    
    con.close()


if rope.rope:
    saleData = processSaleData(rope.rope)
    insertToDB(saleData)
