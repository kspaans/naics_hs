#!/bin/sh

# NOTE: The years have to be separated by pipes (|) but in this script have to
#       be encoded in a URL safe way, using the escaped notation. %7c is short
#       for a pipe.
for HS_CODE in `cat hs_codes.txt` ; do
  echo Grabbing $HS_CODE ...
  curl "https://www.ic.gc.ca/app/scr/tdst/tdo/report.csv?naArea=9998\
&currency=US&toFromCountry=CDN&searchType=KS_CS&hSelectedCodes=%7c${HS_CODE}\
&countryList=DET\
&customYears=2010%7c2011%7c2012%7c2013\
&productType=HS6&grouped=GROUPED&reportType=DE\
&timePeriod=%7cCustom+Years&runReport=true" -o export_${HS_CODE}.csv
  sleep 5
done
