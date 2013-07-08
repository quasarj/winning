#!/usr/bin/bash
cd /home/quasar/work/winning/app
. ../env.linux/bin/activate
./manage.py runscript auctions
./manage.py runscript items
./manage.py runscript prices
