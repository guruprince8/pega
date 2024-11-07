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


~/kafka/bin/kafka-topics.sh --create --bootstrap-server 192.168.1.218:9092 --replication-factor 1 --partitions 1 --topic TutorialTopic

~/kafka/bin/kafka-topics.sh --create --bootstrap-server 192.168.1.218:9092 --replication-factor 1 --partitions 1 --topic TutorialTopic2

~/kafka/bin/kafka-topics.sh --bootstrap-server 192.168.1.218:9092 --list

~/kafka/bin/kafka-topics.sh --describe --bootstrap-server 192.168.1.218:9092 --topic TutorialTopic

~/kafka/bin/kafka-topics.sh --version

curl https://downloads.apache.org/kafka/3.6.2/kafka_2.13-3.6.2.tgz -o kafka.tgz

tar -xvzf ../kafka.tgz --strip 1

nc -zv 192.168.1.218 9092
