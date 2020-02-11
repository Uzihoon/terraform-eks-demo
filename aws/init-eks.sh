#!/bin/bash

if [ -z $1 ]; then
  echo "Error: input EKS Cluster name"
  exit
fi

_CLUSTER_NAME=$1

# configure EKS Cluster
aws eks update-kubeconfig --name $_CLUSTER_NAME