
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

def gold_short(value):
    return "{}g".format(round(value / 10000.00, 2))


if __name__ == '__main__':
    g = 274193
    print gold_short(g)
    print gold(g)
