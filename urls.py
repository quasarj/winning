from django.conf.urls.defaults import *
from django.conf import settings
from craft.models import Item, ItemInfo

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()


info_dict = {
    'queryset': ItemInfo.objects.all(),
}

urlpatterns = patterns('',
    # Example:
    #(r'^craft/', include('craft_info.craft.urls')),
    #(r'^item/$', 'craft.views.item_list'),
    #(r'^item/(?P<item_id>\d+)/$', 'craft.views.item'),

    #static media, DO NOT USE FOR PRODUCTION (per docs)
    #(r'^media/(?P<path>.*)$', 'django.views.static.serve',
    #    {'document_root': settings.STATIC_DOC_ROOT,
    #     'show_indexes': True}),

    (r'^$', 'craft.views.index'),
    (r'^search/name/$', 'craft.views.search_name'),
    (r'^undercut/(?P<owner>.+)/$', 'craft.views.undercut'),
    (r'^history/(?P<item>\d+)/$', 'craft.views.history'),

    (r'^items/$',
        'django.views.generic.list_detail.object_list', 
        dict(info_dict, paginate_by=100)),

    (r'^item/(?P<object_id>\d+)/$',
        'django.views.generic.list_detail.object_detail', info_dict),

    (r'^auctions/(?P<item_id>\d+)/$', 'craft.views.auctions'),

    (r'^seller/(?P<owner>.+)/$', 'craft.views.seller'),
    
    # Uncomment the admin/doc line below to enable admin documentation:
    # (r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # (r'^admin/', include(admin.site.urls)),
)
