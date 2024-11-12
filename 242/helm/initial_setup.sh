helm version 
helm repo add pega https://pegasystems.github.io/pega-helm-charts
helm inspect values pega/pega > pega.yaml
helm inspect values pega/addons > addons.yaml
helm inspect values pega/backingservices > backingservices.yaml
helm repo list

/* DEV Environment */
helm uninstall pega --namespace pega
helm install pega pega/pega --namespace pega --values values-local.yaml
helm install backingservices pega/backingservices --namespace pegabackingservices --values backingservices.yaml
helm install addons pega/addons --namespace pegaaddons --values addons.yaml
helm install pega pega/pega --namespace pega --values pega.yaml

/* SIT Environment */
helm uninstall pega-sit --namespace pega-sit
helm install pega-sit pega/pega --namespace pega-prod --values values-local-sit.yaml
kubectl exec -it pega-search-0 -n pega-sit -- /bin/sh
kubectl exec -it pega-minikube-0 -n pega-sit -- /bin/sh



/* E2E Environment */
helm uninstall pega-e2e --namespace pega-cert
helm install pega-e2e pega/pega --namespace pega-prod --values values-local-e2e.yaml
kubectl exec -it pega-search-0 -n pega-e2e -- /bin/sh
kubectl exec -it pega-minikube-0 -n pega-e2e -- /bin/sh



/* CERT Environment */
helm uninstall pega-cert --namespace pega-cert
helm install pega-cert pega/pega --namespace pega-prod --values values-local-cert.yaml
kubectl exec -it pega-search-0 -n pega-cert -- /bin/sh
kubectl exec -it pega-minikube-0 -n pega-cert -- /bin/sh



/* PROD Environment */
helm uninstall pega-prod --namespace pega-prod
helm install pega-prod pega/pega --namespace pega-prod --values values-local-prod.yaml
kubectl exec -it pega-search-0 -n pega-prod -- /bin/sh
kubectl exec -it pega-minikube-0 -n pega-prod -- /bin/sh





