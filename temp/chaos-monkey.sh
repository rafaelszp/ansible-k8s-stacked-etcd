#!/bin/sh

cmd='tail'
for i in {1..600000};
do
        kubectl delete pod $(kubectl get pod | awk '{print $1}' |grep -v NAME | $cmd -n4);
        if [ "$cmd" = "tail" ]
        then
          cmd='head'
        else
          cmd='tail'
        fi
        sleep 60;
done;
