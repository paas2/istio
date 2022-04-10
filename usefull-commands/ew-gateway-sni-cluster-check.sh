istioctl  pc clusters deploy/istio-eastwestgateway.istio-system  | awk '{printf "CLUSTER: %s\n", $1}' 

istioctl pc clusters deploy/istio-eastwestgateway.istio-system | grep vault | awk '{printf "CLUSTER: %s\n", $1}'


# Vault endpoint for bwb-dev should point to the east-west gateway’s address of security-dev cluster, which proxies the request to the vauklt workload in its network. 
#  To check this let’s get the address of the east-west gateway in the security-dev cluster: 

kubectl -n istio-system --context=security-dev get svc istio-eastwestgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}'


istioctl --context=bwb-dev pc endpoints deploy/argocd-repo-server.argocd | grep vault
