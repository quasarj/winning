# Create your views here.

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response, get_object_or_404

from craft.models import ItemInfo, ImportTime, Auctions, TopSellers


# None of these are used right now! All generic views!
# remove this comment when this status changes...
def index(request):
    i = ItemInfo.objects.filter(pk__in=[
        55054,
        22573,
        52185,
        52183,
        52328,
        52721,
        52719,
     ])
    t = ImportTime.objects.latest(field_name='time') 

    sellers = TopSellers.objects.all()[:10]

    return render_to_response('craft/index.html', {'items': i, 'time': t, 'sellers': sellers })

def history(request, item):
    from django.db import connection, transaction
    cursor = connection.cursor()

    i = ItemInfo.objects.get(pk=item)   

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

    i = ItemInfo.objects.filter(name__icontains=request.GET['search_name'])

    #the var name here is to match what the generic view outputs
    return render_to_response('craft/iteminfo_list.html', {'object_list': i})

def auctions(request, item_id):
    # This could cause some issue later, as "item" here should really
    # be a related item object, but this is working currently!
    a = Auctions.objects.filter(item=item_id).order_by('buyout')
    if len(a) < 1:
        raise Http404

    i = a[0].item

    return render_to_response('craft/auctions.html', {'auctions': a, 'item': i})

def seller(request, owner):
    a = Auctions.objects.filter(owner=owner).order_by('buyout')
    if len(a) < 1:
        raise Http404

    return render_to_response('craft/seller.html', {'auctions': a})

def item(request, item_id):
	i = get_object_or_404(ItemInfo, pk=item_id)
	return render_to_response('craft/item.html', {'item': i})

