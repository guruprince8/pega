/* PROD Environment */
helm uninstall pega-prod --namespace pega-prod
helm install pega-prod pega/pega --namespace pega-prod --values values-local-prod.yaml
kubectl exec -it pega-search-0 -n pega-prod -- /bin/sh
kubectl exec -it pega-minikube-0 -n pega-prod -- /bin/sh
tail -f /usr/local/tomcat/logs/pega-minikube-0/PegaRULES.log
