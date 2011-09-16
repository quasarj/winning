#!/bin/bash

DATE=`date +%s`
mysql -uquasar -ptheeyeofra -e "select * from wow.auctions" > data/$DATE.txt
