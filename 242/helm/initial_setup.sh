helm version 
helm repo add pega https://pegasystems.github.io/pega-helm-charts
helm inspect values pega/pega > pega.yaml
helm inspect values pega/addons > addons.yaml
helm inspect values pega/backingservices > backingservices.yaml
helm repo list

helm uninstall pega --namespace pega
helm install pega pega/pega --namespace pega --values values-local.yaml

helm install backingservices pega/backingservices --namespace pegabackingservices --values backingservices.yaml
helm install addons pega/addons --namespace pegaaddons --values addons.yaml
helm install pega pega/pega --namespace pega --values pega.yaml

/* SIT Environment */
helm install pega-sit pega/pega --namespace pega-prod --values values-local-sit.yaml

/* E2E Environment */
helm install pega-e2e pega/pega --namespace pega-prod --values values-local-e2e.yaml

/* CERT Environment */
helm install pega-cert pega/pega --namespace pega-prod --values values-local-cert.yaml

/* PROD Environment */
helm install pega-prod pega/pega --namespace pega-prod --values values-local-prod.yaml





