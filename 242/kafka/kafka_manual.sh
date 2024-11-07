# https://www.digitalocean.com/community/tutorials/how-to-install-apache-kafka-on-ubuntu-20-04
wget -O kafka.tgz https://archive.apache.org/dist/kafka/3.6.0/kafka_2.12-3.6.0.tgz
mkdir kafka
cd kafka
tar -xvzf ../kafka.tgz --strip 1
cat ../config/server.properties
ls /tmp/kafka-logs
sudo systemctl daemon-reload
sudo systemctl stop kafka
sudo systemctl status kafka
sudo systemctl status zookeepe
sudo systemctl status zookeeper
sudo systemctl stop zookeeper
clear
sudo systemctl status zookeeper


cat /home/guru/kafka/config/zookeeper.properties
dataDir=/tmp/zookeeper
ls /tmp/zookeeper/

./bin/kafka-configs.sh --zookeeper localhost:2181 --alter --add-config 'SCRAM-SHA-512=[password='admin-secret']' --entity-type users --entity-name admin

cd /home/guru/kafka
cat /home/guru/kafka/config/kafka_server_jaas.conf


KafkaServer {
org.apache.kafka.common.security.plain.PlainLoginModule required
username="admin"
password="admin"
user_admin="admin"
user_alice="alice";
};
