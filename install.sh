#!/usr/bin/env bash
curl -L https://istio.io/downloadIstio | sh -
cd istio-1.10.2
export PATH=$PWD/bin:$PATH
istioctl install --set profile=default -y
kubectl label namespace default istio-injection=enabled
