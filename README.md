# Pega
This git repo describes about the series steps involved in setting up a Pega environment locally using open source kubernets enviornment ( docker desktop or minikube ). Please use either docker desktop or minikube as per the preference. 

<h2>Points To Note</h2>
One keything obsevered when docker desktop leveraged upon restart of environment kubernets cluster is auto launched which avoids manual intervention.
<h2> Pega Platform Release Notes </h2>
As the <a href="https://docs.pega.com/bundle/platform/page/platform/hub/platform-install-update.html"> product documenation </a> from Pega in future no longer the virtual deployment is supported.
Each folder consists the yaml files applicable to specific product version and environments ( dev, sit, and etc.. ). Please refer and use the configuration files as per the need.

<h2>Hardware Requirements - Single Environment </h2>
 <li>20GB RAM</li>
 <li>100TB Hard Disk </li>
 
<h2>Hardware Requirements - All Environments matching SDLC</h2>
 <li>64GB RAM</li>
 <li>1TB Hard Disk </li>

 <h2>Prequisites to launch a kubernets environment</h2>
 <li>Install Docker Desktop - please refer link <a href="https://docs.docker.com/desktop/">Docker Desktop</a></li>
 <li>Install Minikube - please refer link <a href="https://minikube.sigs.k8s.io/docs/start/?arch=%2Fmacos%2Farm64%2Fstable%2Fbinary+download">Minikube Installation</a></li>
 <li>Install Postgres 15 - please refer link <a href="https://www.postgresql.org/download/">Postgres Installation </a></li>
 <li>Install Helm Package Manager - please refer link <a href="https://helm.sh/docs/intro/install/">Install Helm</a></li>
 <li>Install Kubectl - please refer link <a href="https://kubernetes.io/docs/tasks/tools/">Install Kubernets</a></li>

 <h2>Lauch External Kafka Environment</h2>
 As Pega manadated to use external kafka environment and applied the following steps to launch a external kafka environment in kubernets cluster in the same namespace.
 <a href="https://github.com/guruprince8/pega/blob/main/242/kafka/kafka_setup_helm.sh"> Set Up External Kafka </a>

