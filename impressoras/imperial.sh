#!/bin/bash

# lpadmin -p <impressora> -E -v ipp://<ip-do-computador>:631/printers/<impressora>

declare -a host="192.168.4.10"
declare -a printers=("imperial-xerox-pi-epson-3250-a" "imperial-xerox-pi-epson-l3250-b" "imperial-xerox-pi-epson-l4160")

for p in "${printers[@]}"
do
   echo "Adicionando $host $p"
   lpadmin -x $p 2> /dev/null
   lpadmin -p $p -E -v ipp://$host:631/printers/$p
done