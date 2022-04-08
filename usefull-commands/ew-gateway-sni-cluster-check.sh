istioctl  pc clusters deploy/istio-eastwestgateway.istio-system  \                                                      ✔ 
   | awk '{printf "CLUSTER: %s\n", $1}' 