kubectl config use-context docker-desktop


helm uninstall pega --namespace pega
helm install pega pega/pega --namespace pega --values values-local.yaml
kubectl exec -it pega-search-0 -n pega -- /bin/sh
kubectl exec -it  pega-minikube-0 -n pega -- /bin/sh
tail -f /usr/local/tomcat/logs/pega-minikube-0/catalina*.log
cat /usr/local/tomcat/logs/catalina*.log
ls /usr/local/tomcat/logs/pega-minikube-0
tail -f /usr/local/tomcat/logs/pega-minikube-0/PegaRULES.log

[sudo] password for guru:
WARNING! Using --password via the CLI is insecure. Use --password-stdin.
WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credential-stores

curl http://pega-search
{
  "name" : "zpRuqci",
  "cluster_name" : "elasticsearch5-openshift",
  "cluster_uuid" : "vZwErtm_SwmwVl8GM05PGQ",
  "version" : {
    "number" : "5.6.14",
    "build_hash" : "f310fe9",
    "build_date" : "2018-12-05T21:20:16.416Z",
    "build_snapshot" : false,
    "lucene_version" : "6.6.1"
  },
  "tagline" : "You Know, for Search"
}

tail -f /usr/local/tomcat/logs/pega-minikube-0/PegaRULES.log
