from django import template

register = template.Library()

@register.filter
def divide(value, arg):
	"""Divides the value by the argument"""
	return float(value) / float(arg)


@register.filter
def gold(value):
	"""Convert the value into gold, ie 12g 34s 23c"""
	value = str(value)
	
	gold = value[:-4]

	silver = value[-4:-2]

	copper = value[-2:]

	
	if gold == '': gold = '0'
	if silver == '': silver = '0'
	if copper == '': copper = '0'

	return "%sg %ss %sc" % (gold, silver, copper)
