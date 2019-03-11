#!/bin/sh

kubectl apply -f /etc/kubernetes/local-storageclass.yml
kubectl patch storageclass local-storage -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'