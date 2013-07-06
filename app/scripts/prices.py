from craft.models import Auction, Price, Item

def run():
    print "Calculating new prices..."

    Price.objects.all().delete()

    # this is a trick to load new prices as objects
    # then save them, which creates the real objects
    # in the Price table
    new_prices = Price.objects.raw("""
        SELECT
        item_id, 
        ceiling(min(buyout / quantity)) as price,
        ceiling(avg(buyout / quantity)) as average_price

        FROM `wow`.`craft_auction`
        where buyout <> 0
        group by item_id
    """)

    
    for i,p in enumerate(new_prices):
        if i % 100 == 0:
            print i
        p.save()

