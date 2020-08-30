#!/bin/bash
kubectl apply -f jenkins.namespace.yaml
kubectl apply -f jenkins.helm.yaml
WAIT=60
echo "Sleeping for $WAIT"
sleep $WAIT
echo "Making progress"
. query.sh
