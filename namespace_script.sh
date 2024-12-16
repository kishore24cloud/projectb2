#!/bin/bash
# write a pipeline or a groovy method, to make sure i create the namesapces from the jenkins.
namespace_name="boutique"

echo "Namespace given is ${namespace_name}"
# Lets Verify if Kubernetes namespace exists 
if kubectl get namespace "${namespace_name}" &> /dev/null ; then 
  echo "Your kubernetes namesapce '${namespace_name}' exists"
  exit 0
else 
  echo "Your Namespace '${namespace_name}' doesnot exists, so creating it !!!!!!"
  if kubectl create namespace "${namespace_name}" &> /dev/null; then 
    echo "Your Namespace '${namespace_name}' has created succesfully"
    exit 0
  else
    echo "Some Error, failed to create namespace '${namespace_name}'"
    exit 1
  fi 
fi
