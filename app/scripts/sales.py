#!/usr/bin/env python

'''
Created on Sep 23, 2011

@author: QAJarosz
'''

import sha
import datetime

import rope

from craft.models import Sale, Purchase
# from django.db.utils import IntegirtyError

def get_item_id(encoded_string):
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

def process_sale_data(sell_data):
    
    sales = []
    
    for i in sell_data:
        encodedItem, encodedRecords = sell_data[i].split("!")
        item_id = get_item_id(encodedItem)
        
        for record in encodedRecords.split("@"):
            # generate a sha1 id for this sale, so we can easily
            # avoid duplicates in the database.
            sale_id = sha.new(record).hexdigest()

            (stack_size, 
             quantity, 
             sale_time, 
             price, 
             sold_to, 
             sold_by) = record.split("#")

            sales.append({
                'sale_id': sale_id,
                'item_id': item_id,
                'stack_size': decode(stack_size),
                'quantity': decode(quantity),
                'sale_time': datetime.datetime.fromtimestamp(decode(sale_time)),
                'price': decode(price),
                'sold_to': sold_to,
                'sold_by': sold_by,
            })
    return sales

def load_sale_data(sale_data):
    print "Loading data for {} sales...".format(len(sale_data))
    for sale in sale_data:
        try:
            s = Sale()
            s.item_id = sale['item_id']
            s.sale_id = sale['sale_id']
            s.stack_size = sale['stack_size']
            s.quantity = sale['quantity']
            s.sale_time = sale['sale_time']
            s.price = sale['price']
            s.sold_to = sale['sold_to']
            s.sold_by = sale['sold_by']

            s.save()
        except: # IntegirtyError:
            print "Failed to import this sale, the item probably doesn't exist: {}".format(sale['item_id'])

def load_buy_data(sale_data):
    # exactly the same as sale data, except sold_to and sold_by are reversed
    print "Loading data for {} sales...".format(len(sale_data))
    for sale in sale_data:
        try:
            s = Purchase()
            s.item_id = sale['item_id']
            s.sale_id = sale['sale_id']
            s.stack_size = sale['stack_size']
            s.quantity = sale['quantity']
            s.sale_time = sale['sale_time']
            s.price = sale['price']
            # reversed on purpose, see above
            s.sold_to = sale['sold_by']
            s.sold_by = sale['sold_to']

            s.save()
        except: # IntegirtyError:
            print "Failed to import this sale, the item probably doesn't exist: {}".format(sale['item_id'])

def run():
    sale_data = process_sale_data(rope.sell_data)
    buy_data = process_sale_data(rope.buy_data)
    load_sale_data(sale_data)
    load_buy_data(buy_data)

