#!/bin/sh
echo  generating load
load=1
while [ "$load" = 1 ]
do
    wget 'http://nginx-svc.default.svc.cluster.local' -q -O /dev/null || echo 'Error'
done;