#!/bin/bash

# host='cat host_list' wrong
host=`cat host_list` 

while true

do
    for i in $host
    do
        h="$i"
        ping -c 1 -q "$h" &>/dev/null
        if [ $? -eq 0 ]
        then
            echo `date` "server $h alive"
        else
            echo `date` "server $h dead"
        fi
    done
    sleep 60 #sleep for 60s
done
