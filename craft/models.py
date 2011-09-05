# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

class ImportTime(models.Model):
    time = models.DateTimeField()
    class Meta:
        db_table = u'importtime'

class Item(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=600, blank=True)
    class Meta:
        db_table = u'item'

class ItemInfo(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=135, blank=True)
    level = models.IntegerField(null=True, blank=True)
    class_field = models.IntegerField(null=True, db_column='class', blank=True) # Field renamed because it was a Python reserved word.
    subclass = models.IntegerField(null=True, blank=True)
    quality = models.IntegerField(null=True, blank=True)
    icon = models.CharField(max_length=135, blank=True)
    icon_id = models.IntegerField(null=True, blank=True)
    tooltip = models.TextField(blank=True)

    def __unicode__(self):
        return self.name


    def iscrafted(self):
        if self.craft_set.all():
            return "Is a crafted item!"
        else:
            return "Is not a crafted item :("

    def deep_profit(self):
        return self.price.price - self.cost()


    def cost(self):
        """Calculate the 'full cost' of this item, recursively"""

        try:
            return self.cost_rec(recursion_count=0)
        except:
            return -1

    def cost_rec(self, recursion_count):
        if recursion_count > 10:
            raise Exception("We've gone too deep!")

        #if this item has no reagents, return it's own price
        if not self.craft_set.all():
            return self.price.price

        #if it does, add up the cost of those items and return
        else:
            cost = 0
            for craft in self.craft_set.all():
                cost += (craft.reagent.cost_rec(recursion_count + 1) \
                    * craft.count)

            return cost


    def simple_cost(self):
        cost = 0
        
        if self.craft_set.all():

            for craft in self.craft_set.all():
                cost += (craft.reagent.price.price * craft.count)
        else:
            cost = self.price.price

        return cost

    class Meta:
        db_table = u'item_info'


class Craft(models.Model):
    #item_id = models.IntegerField(db_column='id')
    item = models.ForeignKey(ItemInfo, db_column='id')
    reagent = models.ForeignKey(ItemInfo, related_name="reagent", db_column='reagent_id')
    #reagent_id = models.IntegerField(null=True, blank=True)
    quality = models.IntegerField(null=True, blank=True)
    count = models.IntegerField(null=True, blank=True)

    class Meta:
        db_table = u'craft'


class Price(models.Model):
    item = models.OneToOneField(ItemInfo, db_column='item', primary_key=True) #one-to-one foreign key
    #item = models.IntegerField(primary_key=True)
    price = models.IntegerField(null=True, blank=True)
    average_price = models.IntegerField(null=True, blank=True)
    class Meta:
        db_table = u'price'

class RareGemValues(models.Model):
    item = models.ForeignKey(ItemInfo)
    value = models.DecimalField(null=True, max_digits=56, decimal_places=8, blank=True)
    class Meta:
        db_table = u'rare_gem_values'


class TopSellers(models.Model):
    owner = models.CharField(max_length=45, primary_key=True)
    auctions = models.IntegerField()

    class Meta:
        db_table = u'top_sellers'

class Auctions(models.Model):
    auc = models.IntegerField(primary_key=True)
    time_left = models.CharField(max_length=10)
    bid = models.IntegerField()
    item = models.ForeignKey(ItemInfo, db_column='item')
    owner = models.CharField(max_length=45)
    buyout = models.IntegerField()
    quantity = models.IntegerField()

    class Meta:
        db_table = u'auctions'


