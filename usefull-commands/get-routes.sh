istioctl proxy-config route deploy/istio-ingressgateway \
-o json --name http.8080  -n istio-system



istioctl proxy-config route deploy/istio-ingressgateway \
-o json -n istio-system

istioctl -n vault proxy-config listeners vault-0 --port 15001 -o json  

istioctl -n vault proxy-config endpoint vault-0 --port 15001 -o json 

istioctl -n vault proxy-config clusters vault-0 --port 15001 -o json 

istioctl -n vault proxy-config route vault-0 -o json 

