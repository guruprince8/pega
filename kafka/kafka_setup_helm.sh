helm uninstall kafka -n pega
helm install kafka oci://registry-1.docker.io/bitnamicharts/kafka -n pega
helm install kafka oci://registry-1.docker.io/bitnamicharts/kafka --namespace pega
kubectl exec -it kafka-controller-0 -n pega -- /bin/sh
(kubectl get secret kafka-user-passwords --namespace pega -o jsonpath='{.data.client-passwords}' | base64 -d | cut -d , -f 1)
kubectl exec -it kafka-controller-0 -n pega -- /bin/sh
cd /bitnami/kafka/data
