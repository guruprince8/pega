kubectl create namespace ecommerceapi

kubectl apply -f ecommerce-api-pod.yaml -n ecommerceapi
kubectl get pods -A
kubectl logs ecommerce-api -n ecommerceapi

kubectl apply -f ecommerce-api-service.yaml -n ecommerceapi
kubectl get service -A
