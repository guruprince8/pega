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




