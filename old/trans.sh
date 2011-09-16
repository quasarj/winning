#!/bin/bash

TRANSFORM=-text

echo Transforming items...
xalan $TRANSFORM -xsl ./items.xslt -in ./A-Auchindoun.xml -out items.sql
echo Transforming prices...
xalan $TRANSFORM -xsl ./prices.xslt -in ./A-Auchindoun.xml -out prices.sql

