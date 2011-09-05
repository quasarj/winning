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

