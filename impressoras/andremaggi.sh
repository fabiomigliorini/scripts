#!/bin/bash

# lpadmin -p <impressora> -E -v ipp://<ip-do-computador>:631/printers/<impressora>

declare -a host="192.168.5.10"
declare -a printers=("amaggi-xerox-pi-l3250-a" "amaggi-xerox-pi-l3250-b" "amaggi-xerox-pi-l4260	")

for p in "${printers[@]}"
do
   echo "Adicionando $host $p"
   lpadmin -x $p 2> /dev/null
   lpadmin -p $p -E -v ipp://$host:631/printers/$p
done