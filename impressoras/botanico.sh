#!/bin/bash

# lpadmin -p <impressora> -E -v ipp://<ip-do-computador>:631/printers/<impressora>

declare -a host="192.168.2.10"
declare -a printers=("botanico-xerox-pi-epson-l3250-a" "botanico-xerox-pi-epson-l3250-b" "botanico-xerox-pi-epson-l3250-c" "botanico-xerox-pi-epson-l3250-d" "botanico-xerox-pi-epson-l3250-e" "botanico-xerox-pi-epson-l4260")

for p in "${printers[@]}"
do
   echo "Adicionando $host $p"
   lpadmin -x $p 2> /dev/null
   lpadmin -p $p -E -v ipp://$host:631/printers/$p
done