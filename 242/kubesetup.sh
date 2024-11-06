sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
helm version ; helm repo list;
kubectl create namespace pega ; kubectl create namespace pegaaddons ; kubectl create namespace pegabackingservices

# kafka set up
helm uninstall kafka -n pega
helm install kafka oci://registry-1.docker.io/bitnamicharts/kafka -n pega
helm install kafka oci://registry-1.docker.io/bitnamicharts/kafka --namespace pega

(kubectl get secret kafka-user-passwords --namespace pega -o jsonpath='{.data.client-passwords}' | base64 -d | cut -d , -f 1)


helm install backingservices pega/backingservices --namespace pegabackingservices --values backingservices.yaml
helm install addons pega/addons --namespace pegaaddons --values addons.yaml
helm install pega pega/pega --namespace pega --values pega.yaml

helm version
helm repo add pega https://pegasystems.github.io/pega-helm-charts
helm inspect values pega/pega > pega.yaml
helm inspect values pega/addons > addons.yaml
helm inspect values pega/backingservices > backingservices.yaml

helm install pega pega/pega --namespace pega --values values-local.yaml
helm uninstall pega --namespace pega


tail -f /usr/local/tomcat/logs/pega-minikube-0/PegaRULES.log



[sudo] password for guru:
WARNING! Using --password via the CLI is insecure. Use --password-stdin.
WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credential-stores

Login Succeeded

~/kafka/bin/kafka-topics.sh --create --bootstrap-server 192.168.1.218:9092 --replication-factor 1 --partitions 1 --topic TutorialTopic

~/kafka/bin/kafka-topics.sh --create --bootstrap-server 192.168.1.218:9092 --replication-factor 1 --partitions 1 --topic TutorialTopic2

~/kafka/bin/kafka-topics.sh --bootstrap-server 192.168.1.218:9092 --list

~/kafka/bin/kafka-topics.sh --describe --bootstrap-server 192.168.1.218:9092 --topic TutorialTopic

~/kafka/bin/kafka-topics.sh --version

curl https://downloads.apache.org/kafka/3.6.2/kafka_2.13-3.6.2.tgz -o kafka.tgz

tar -xvzf ../kafka.tgz --strip 1

nc -zv 192.168.1.218 9092


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
