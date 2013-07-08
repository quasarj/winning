# Create your views here.

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response, get_object_or_404

from craft.models import *
from util import gold_short


# None of these are used right now! All generic views!
# remove this comment when this status changes...
def index(request):
    i = Item.objects.filter(name__in=[
        'Ghost Iron Ore',
        'Ghost Iron Bar',
        'White Trillium Ore',
        'Black Trillium Ore',
        'Trillium Bar',
        'Living Steel',
        'Living Steel Belt Buckle',
        'Green Tea Leaf',
     ])
    t = ImportTime.objects.latest(field_name='time') 
    #t = None

    #sellers = TopSellers.objects.all()[:10]
    sellers = None

    return render_to_response('craft/index.html', {'items': i, 'time': t, 'sellers': sellers })

def history(request, item):
    from django.db import connection, transaction
    cursor = connection.cursor()

    i = Item.objects.get(pk=item)   

    # do the history queries
    cursor.execute("""
        select
            ph.time,
            ph.price / 10000,
            ph.depth
        from
            price_history ph
        where
            ph.item = %s 
        order by time desc
        limit 200
    """, [item])

    rows = cursor.fetchall()
    
    rows = list(rows)
    rows.reverse() # this order is more useful

    return render_to_response('craft/history.html', {'item': i, 'rows': rows})

def undercut(request, owner):
    from django.db import connection, transaction
    cursor = connection.cursor()
    # run undercut query

    #cursor.execute("""
    #    drop table if exists my_auctions;
    #""")

    cursor.execute("""
        create table if not exists my_auctions (
        item int,
        price decimal);
    """)

    cursor.execute("truncate my_auctions;")

    cursor.execute("""
        insert into my_auctions
        select item, min(buyout / quantity) as price
        from auctions
        where owner = %s
        group by item;
    """, [owner])

    # the main query
    cursor.execute("""
        select
            item_info.name,
            lowest_price.item,
            lowest_price.owner,
            lowest_price.price / 10000 as their_price,
            my_items.price / 10000 as my_price

        from
            (
                -- get lowest price and the owner for each item
                select distinct
                    a.item, a.owner, a.price
                from 
                    (
                        select 
                            a.item,
                            min(a.buyout / a.quantity) as price
                        from auctions a, my_auctions
                        where a.item = my_auctions.item
                        group by a.item
                        order by price
                    ) min_price,
                    (
                        select a.item, a.owner, 
                            a.buyout / a.quantity as price
                        from auctions a, my_auctions m
                        where a.item = m.item
                    ) a
                    
                where a.item = min_price.item
                  and a.price = min_price.price
                                
            ) lowest_price,
            my_auctions as my_items,
            item_info
            
        where lowest_price.item = my_items.item
          and item_info.id = lowest_price.item
          -- and owner != 'Aonah'

        order by owner;
    """)
    
    rows = cursor.fetchall()

    cursor.execute("""
        drop table if exists my_auctions;
    """)

    return render_to_response('craft/undercut.html', {'rows': rows})


def search_name(request):
    if not request.GET['search_name']:
        raise Http404

    i = Item.objects.filter(name__icontains=request.GET['search_name'])

    #the var name here is to match what the generic view outputs
    return render_to_response('craft/item_list.html', {'object_list': i})

def auctions(request, item_id):
    # This could cause some issue later, as "item" here should really
    # be a related item object, but this is working currently!
    a = Auction.objects.filter(item=item_id).order_by('buyout')
    if len(a) < 1:
        raise Http404

    i = a[0].item

    return render_to_response('craft/auctions.html', {'auctions': a, 'item': i})

def seller(request, owner):
    a = Auction.objects.filter(owner=owner).order_by('buyout')
    if len(a) < 1:
        raise Http404

    return render_to_response('craft/seller.html', {'auctions': a})

def item(request, item_id):
	i = get_object_or_404(Item, pk=item_id)
	return render_to_response('craft/item.html', {'item': i})

def stats(request):
    # first step, get the prices of the items we need to work with

    # items = Item.objects.filter(name__in=[
    item_names = [
        'Ghost Iron Ore',
        'Ghost Iron Bar',
        'White Trillium Ore',
        'Black Trillium Ore',
        'Trillium Bar',
        'Living Steel',
        'Living Steel Belt Buckle',
    ]
    items = {}
    for i in item_names:
        items[i] = Price.objects.filter(item__name=i)[0].price

    gio = items['Ghost Iron Ore']
    gib = items['Ghost Iron Bar']
    wto = items['White Trillium Ore']
    bto = items['Black Trillium Ore']
    tb = items['Trillium Bar']
    ls = items['Living Steel']
    lsbb = items['Living Steel Belt Buckle']



    out = []
    o = {}
    t = table_maker(out)

    t("Ghost Iron Ore", items['Ghost Iron Ore'])

    # overwrite this one
    items['Ghost Iron Ore'] = 24000


    t("My Actual Ghost Iron Ore", items['Ghost Iron Ore'])
    gio_bar = gio * 2 * 10 * 6
    gio_profit = ls - gio_bar

    t("Ghost Iron Ore -> Living Steel", gio_bar)
    t("Ghost Iron Ore profit (bar)", gio_profit)
    t("Ghost Iron Ore profit (buckle)", lsbb - gio_bar)
    t("----")

    gib_bar = gib * 10 * 6
    gib_profit = ls - gib_bar

    t("Ghost Iron Bar", gib)
    t("Ghost Iron Bar -> Living Steel", gib_bar)
    t("Ghost Iron Bar profit (bar)", gib_profit)
    t("Ghost Iron Bar profit (buckle)", lsbb - gib_bar)
    t("----")

    to = (wto + bto) / 2
    to_bar = to * 4 * 6
    to_profit = ls - to_bar

    t("White Trillium Ore", wto)
    t("Black Trillium Ore", bto)
    t("Trillium Ore (avg)", to)
    t("Trillium Ore -> Living Steel", to_bar)
    t("Trillium Ore profit (bar)", to_profit)
    t("Trillium Ore profit (buckle)", lsbb - to_bar)
    t("----")

    tb_ls = tb * 6
    tb_profit = ls - tb_ls

    t("Trillium Bar", tb)
    t("Trillium Bar -> Living Steel", tb_ls)
    t("Trillium Bar profit (bar)", tb_profit)
    t("Trillium Bar profit (buckle)", lsbb - tb_ls)
    t("----")


    t("Living Steel", ls)
    t("Living Steel Belt Buckle", lsbb)

    return HttpResponse(make_table(out))


def make_table(out):
    s = "<table>"
    for tr in out:
        s += "<tr><td>{}</td><td>{}</td></tr>".format(*tr)
    s += "</table>"

    return s

def table_maker(output_list):
    def table(left, right=None):
        if right:
            # output_list.append("{}: {}".format(left, gold(right)))
            output_list.append((left, gold_short(right)))
        else:
            output_list.append(left)

    return table

