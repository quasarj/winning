import json


from django.db.utils import IntegrityError
from craft.models import Auction, Item



def add_auctions():
    with open("/home/quasar/personal/winning/scripts/auctions.json") as inf:
        data = json.loads(inf.read())

    auctions = data['alliance']['auctions']

    for auc in auctions:
        add_auction(auc)


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
    add_auctions()
