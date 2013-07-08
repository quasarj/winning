# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models
from util import gold_short


class ImportTime(models.Model):
    time = models.DateTimeField()


class Item(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=135, blank=True)
    level = models.IntegerField(null=True, blank=True)
    class_field = models.IntegerField(null=True, blank=True) # Field renamed because it was a Python reserved word.
    subclass = models.IntegerField(null=True, blank=True)
    quality = models.IntegerField(null=True, blank=True)
    icon = models.CharField(max_length=135, blank=True)
    icon_id = models.IntegerField(null=True, blank=True)
    tooltip = models.TextField(blank=True)
    placeholder = models.BooleanField()

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


class CraftSpell(models.Model):
    name = models.CharField(null=True, max_length=200)


class Craft(models.Model):
    item = models.ForeignKey(Item)
    spell = models.ForeignKey(CraftSpell)
    reagent = models.ForeignKey(Item, related_name="reagent_set")
    quality = models.IntegerField(null=True, blank=True)
    count = models.IntegerField(null=True, blank=True)


class Price(models.Model):
    item = models.OneToOneField(Item, primary_key=True)
    price = models.IntegerField(null=True, blank=True)
    average_price = models.IntegerField(null=True, blank=True)

    def __unicode__(self):
        return "{}: {} / {}".format(self.item.name, 
                                    gold_short(self.price), 
                                    gold_short(self.average_price))

# class RareGemValues(models.Model):
#     item = models.ForeignKey(Item)
#     value = models.DecimalField(null=True, max_digits=56, decimal_places=8, blank=True)
#     class Meta:
#         db_table = u'rare_gem_values'


# class TopSellers(models.Model):
#     owner = models.CharField(max_length=45, primary_key=True)
#     auctions = models.IntegerField()

#     class Meta:
#         db_table = u'top_sellers'

class Auction(models.Model):
    auc = models.IntegerField()
    time_left = models.CharField(max_length=10)
    bid = models.IntegerField()
    item = models.ForeignKey(Item)
    owner = models.CharField(max_length=45)
    buyout = models.IntegerField()
    quantity = models.IntegerField()

    def __unicode__(self):
        return u"{} sells {} {} for {}".format(
            self.owner,
            self.quantity,
            self.item.name,
            self.buyout
        )
    # def __str__(self):
    #     return self.__unicode__().encode('ascii', 'ignore')

class UsefulItem(models.Model):
    item = models.ForeignKey(Item)

class Sale(models.Model):
    sale_id = models.CharField(max_length=60, primary_key=True)
    item = models.ForeignKey(Item)
    stack_size = models.IntegerField()
    quantity = models.IntegerField()
    sale_time = models.DateTimeField()
    price = models.IntegerField()
    sold_to = models.CharField(max_length=20)
    sold_by = models.CharField(max_length=20)

    def __unicode__(self):
        return u"{} on {}: {} x {}".format(
            gold_short(self.price),
            self.sale_time,
            self.item.name,
            self.stack_size * self.quantity,
        )


class Purchase(models.Model):
    sale_id = models.CharField(max_length=60, primary_key=True)
    item = models.ForeignKey(Item)
    stack_size = models.IntegerField()
    quantity = models.IntegerField()
    sale_time = models.DateTimeField()
    price = models.IntegerField()
    sold_to = models.CharField(max_length=20)
    sold_by = models.CharField(max_length=20)

    def __unicode__(self):
        return u"{} on {}: {} x {}".format(
            gold_short(self.price),
            self.sale_time,
            self.item.name,
            self.stack_size * self.quantity,
        )
