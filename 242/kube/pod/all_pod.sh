/* kubectl get pods -n pega */
NAME                 READY   STATUS    RESTARTS   AGE
kafka-controller-0   1/1     Running   0          4h27m
kafka-controller-1   1/1     Running   0          4h27m
kafka-controller-2   1/1     Running   0          4h27m
pega-minikube-0      1/1     Running   0          4h3m
pega-search-0        1/1     Running   0          4h3m
*/

/* kubectl describe pod pega-minikube-0 -n pega */
Name:             pega-minikube-0
Namespace:        pega
Priority:         0
Service Account:  default
Node:             docker-desktop/192.168.65.9
Start Time:       Wed, 06 Nov 2024 14:37:44 -0600
Labels:           app=pega-minikube
                  apps.kubernetes.io/pod-index=0
                  controller-revision-hash=pega-minikube-66954dd747
                  statefulset.kubernetes.io/pod-name=pega-minikube-0
Annotations:      certificate-check: 2cb1f675c5f532bd68c3851872bf42719f0516208049d403a84068dac54c695c
                  config-check: aa9cf5f980b5447510e5eceee417cae01cdc20706a6134bed9f193975a559628
                  config-tier-check: 090194df1d935ee509288440e736991f882c6d8f91d2551545855dcf1080c878
Status:           Running
IP:               10.1.0.9
IPs:
  IP:           10.1.0.9
Controlled By:  StatefulSet/pega-minikube
Init Containers:
  wait-for-pegasearch:
    Container ID:  docker://1e86385578e5c23fe648184e7c706770a3ab0d5f426f41df7fea7e525f2adb81
    Image:         busybox:1.31.0
    Image ID:      docker-pullable://busybox@sha256:fe301db49df08c384001ed752dff6d52b4305a73a7f608f21528048e8a08b51e
    Port:          <none>
    Host Port:     <none>
    Command:
      sh
      -c
      until $(wget -q -S --spider --timeout=2 -O /dev/null http://pega-search); do echo Waiting for search to become live...; sleep 10; done;
    State:          Terminated
      Reason:       Completed
      Exit Code:    0
      Started:      Wed, 06 Nov 2024 14:37:46 -0600
      Finished:     Wed, 06 Nov 2024 14:39:15 -0600
    Ready:          True
    Restart Count:  0
    Limits:
      cpu:     50m
      memory:  64Mi
    Requests:
      cpu:        50m
      memory:     64Mi
    Environment:  <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-kbvlc (ro)
Containers:
  pega-web-tomcat:
    Container ID:   docker://2a5565d31648604048e3177d08249fb5327efb7b37018dc778a6e078c0c80b44
    Image:          pega-docker.downloads.pega.com/platform/pega:24.1.1
    Image ID:       docker-pullable://pega-docker.downloads.pega.com/platform/pega@sha256:2fab9d153641ac9ff4e6822334d58438849fb254907538363c4a3d492e5da38b
    Ports:          8080/TCP, 8443/TCP
    Host Ports:     0/TCP, 0/TCP
    State:          Running
      Started:      Wed, 06 Nov 2024 14:39:50 -0600
    Ready:          True
    Restart Count:  0
    Limits:
      cpu:     2
      memory:  12Gi
    Requests:
      cpu:      200m
      memory:   12Gi
    Liveness:   http-get http://:8080/prweb/PRRestService/monitor/pingService/ping delay=0s timeout=20s period=30s #success=1 #failure=3
    Readiness:  http-get http://:8080/prweb/PRRestService/monitor/pingService/ping delay=0s timeout=10s period=10s #success=1 #failure=3
    Startup:    http-get http://:8080/prweb/PRRestService/monitor/pingService/ping delay=10s timeout=10s period=10s #success=1 #failure=30
    Environment Variables from:
      pega-environment-config  ConfigMap  Optional: false
    Environment:
      NODE_TYPE:              Stream,BackgroundProcessing,WebUser,Search
      PEGA_APP_CONTEXT_PATH:  prweb
      POD_NAME:               pega-minikube-0 (v1:metadata.name)
      JAVA_OPTS:
      CATALINA_OPTS:
      INITIAL_HEAP:           8192m
      MAX_HEAP:               12288m
      NODE_TIER:              minikube
      RETRY_TIMEOUT:          30
      MAX_RETRIES:            4
    Mounts:
      /opt/pega/config from pega-volume-config (rw)
      /opt/pega/kafkadata from pega-minikube (rw)
      /opt/pega/secrets from pega-volume-credentials (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-kbvlc (ro)
Conditions:
  Type                        Status
  PodReadyToStartContainers   True
  Initialized                 True
  Ready                       True
  ContainersReady             True
  PodScheduled                True
Volumes:
  pega-minikube:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  pega-minikube-pega-minikube-0
    ReadOnly:   false
  pega-volume-config:
    Type:      ConfigMap (a volume populated by a ConfigMap)
    Name:      pega-minikube
    Optional:  false
  pega-volume-credentials:
    Type:                Projected (a volume that contains injected data from multiple sources)
    SecretName:          pega-db-secret
    SecretOptionalName:  <nil>
    SecretName:          pega-stream-secret
    SecretOptionalName:  <nil>
    SecretName:          pega-diagnostic-secret
    SecretOptionalName:  <nil>
  kube-api-access-kbvlc:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   Burstable
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:                      <none>
