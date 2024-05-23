#!/bin/bash

# lpadmin -p <impressora> -E -v ipp://<ip-do-computador>:631/printers/<impressora>

declare -a host="192.168.2.10"
declare -a printers=("centro-xerox-pi-epson-l3250-a" "centro-xerox-pi-epson-l3250-b" "centro-xerox-pi-epson-l3250-c" "centro-xerox-pi-epson-l4260")

for p in "${printers[@]}"
do
   echo "Adicionando $host $p"
   lpadmin -x $p 2> /dev/null
   lpadmin -p $p -E -v ipp://$host:631/printers/$p
done