#!/bin/sh

 cinco=$(date -d '5 day ago' +'%Y.%m.%d')
 cuatro=$(date -d '4 day ago' +'%Y.%m.%d')
 tres=$(date -d '3 day ago' +'%Y.%m.%d')
 dos=$(date -d '2 day ago' +'%Y.%m.%d')
 uno=$(date -d '1 day ago' +'%Y.%m.%d')
 hoy=$(date +'%Y.%m.%d')

 rsync -acvz -e "ssh -i /home/sopweb/.ssh/id_rsa" \
   "wasusr@10.34.19.65:/usr/WebSphereNDV7/IBMIHSV7/logs/access_log."$cinco \
   "wasusr@10.34.19.65:/usr/WebSphereNDV7/IBMIHSV7/logs/access_log."$cuatro \
   "wasusr@10.34.19.65:/usr/WebSphereNDV7/IBMIHSV7/logs/access_log."$tres \
   "wasusr@10.34.19.65:/usr/WebSphereNDV7/IBMIHSV7/logs/access_log."$dos \
   "wasusr@10.34.19.65:/usr/WebSphereNDV7/IBMIHSV7/logs/access_log."$uno \
   "wasusr@10.34.19.65:/usr/WebSphereNDV7/IBMIHSV7/logs/access_log."$hoy \
   /opt/logstash/logs/http/webprodp1/
