istioctl proxy-config route deploy/istio-ingressgateway \
-o json --name http.8080  -n istio-system