import json
import requests
import datetime


from django.db.utils import IntegrityError
from craft.models import Auction, Item, ImportTime



def add_auctions(url):
    #with open("/home/quasar/personal/winning/scripts/auctions.json") as inf:
    #    data = json.loads(inf.read())


	# kill the old auctions here (delete all!)
    Auction.objects.all().delete()

    r = requests.get(url)
    data = json.loads(r.content)

    auctions = data['alliance']['auctions']

    for auc in auctions:
        try:
            add_auction(auc)
        except:
            print "Failed to add this auction :("



def add_auction(auction):
    # print "Adding auction {}".format(auction['auc'])

    auc = Auction()
    auc.auc = auction['auc']
    auc.bid = auction['bid']
    auc.buyout = auction['buyout']
    auc.quantity = auction['quantity']
    auc.item_id = auction['item']
    auc.time_left = auction['timeLeft']
    auc.owner = auction['owner']

    try:
        auc.save()
    except IntegrityError:
        # print "Looks like no item with this id exists! Creating one."
        i = Item()
        i.id = auction['item']
        i.name = "Placeholder Item: {}".format(auction['item'])
        i.placeholder = True
        i.save()

        auc.save()



def run():
    # test to see if there is new data
    r = requests.get("http://us.battle.net/api/wow/auction/data/whisperwind")
    data = json.loads(r.content)

    url = data['files'][0]['url']
    lastMod = data['files'][0]['lastModified']


    last_mod_date = datetime.datetime.fromtimestamp(lastMod / 1000)
    most_recent_date = ImportTime.objects.order_by('-time')[0].time

    if last_mod_date > most_recent_date:
        print "New data!"
        add_auctions(url)
        new_time = ImportTime()
        new_time.time = datetime.datetime.today()
        new_time.save()

    print "Completed successfully!"
