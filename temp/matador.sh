#!/bin/sh

cmd='tail'
for i in {1..60};
do
        kubectl delete pod $(kubectl get pod | awk '{print $1}' |grep -v NAME | $cmd -n3);
        if [ "$cmd" = "tail" ]
        then
          cmd='head'
        else
          cmd='tail'
        fi
        sleep 30;
done;
