import requests
import time
import xml.etree.ElementTree

from craft.models import Item


def getItemInfo(item):

    #get it from the server
    r = requests.get('http://www.wowhead.com/item=%s&xml' % item.id)

    item_xml = xml.etree.ElementTree.fromstring(r.content)

    item_table = {}
    craft_table = None


    item_table['id'] = item_xml.find("item").attrib["id"]

    item.name = item_xml.find("item/name").text


    item.level = item_xml.find("item/level").text

    item.quality = item_xml.find("item/quality").attrib['id']

    item.class_field = item_xml.find("item/class").attrib['id']
    item.subclass = item_xml.find("item/subclass").attrib['id']
    item.tooltip = item_xml.find("item/htmlTooltip").text
    item.icon_id = item_xml.find("item/icon").attrib['displayId']
    item.icon = item_xml.find("item/icon").text

    # created_by = item.find("item/createdBy/spell")
    # if created_by is not None:
    #   craft_table = []
    #   created_by_id = created_by.attrib["id"]

    #   reagents = list(created_by.iter("reagent"))

    #   for i in reagents:
    #       #print i.attrib["name"]a
    #       i.attrib['item_id'] = item_table['id']
    #       craft_table.append(i.attrib)

    # return item_table, craft_table
    item.placeholder = False
    item.save()

    print "Updated item: {} - {}".format(item.id, item)




def run():
    items = Item.objects.filter(placeholder=True)

    c = 0
    for i in items:
        getItemInfo(i)
        c += 1

        if c > 100:
            print "-- waiting 15 seconds"
            time.sleep(15)
            c = 0

