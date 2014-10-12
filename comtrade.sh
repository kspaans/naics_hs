#!/bin/sh

for COUNTRY in `cat countries.txt`; do
  echo Downloading country $COUNTRY ...
  curl "http://comtrade.un.org/api/get?max=500&type=C&freq=A&px=HS\
&ps=2013%2C2012%2C2011&r=${COUNTRY}&p=all&rg=all&cc=440710\
&token=75908e5a0049366b709897bf4d3173e8" -o comtrade_${COUNTRY}.json
  sleep 5
done
