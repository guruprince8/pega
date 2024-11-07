/* kubectl get pods -n pega */
NAME                 READY   STATUS    RESTARTS   AGE
kafka-controller-0   1/1     Running   0          4h27m
kafka-controller-1   1/1     Running   0          4h27m
kafka-controller-2   1/1     Running   0          4h27m
pega-minikube-0      1/1     Running   0          4h3m
pega-search-0        1/1     Running   0          4h3m
*/

/* kubectl get service -n pega *
NAME                        TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                      AGE
kafka                       ClusterIP   10.98.27.146     <none>        9092/TCP                     4h28m
kafka-controller-headless   ClusterIP   None             <none>        9094/TCP,9092/TCP,9093/TCP   4h28m
pega-minikube               NodePort    10.106.179.219   <none>        80:31101/TCP                 4h4m
pega-search                 ClusterIP   10.110.59.145    <none>        80/TCP                       4h4m
pega-search-transport       ClusterIP   None             <none>        80/TCP                       4h4m



/* kubectl describe service pega-minikube -n pega */

Name:                     pega-minikube
Namespace:                pega
Labels:                   app.kubernetes.io/managed-by=Helm
Annotations:              meta.helm.sh/release-name: pega
                          meta.helm.sh/release-namespace: pega
                          traefik.ingress.kubernetes.io/load-balancer-method: drr
                          traefik.ingress.kubernetes.io/max-conn-amount: 10
                          traefik.ingress.kubernetes.io/service.sticky.cookie: true
                          traefik.ingress.kubernetes.io/service.sticky.cookie.name: UNIQUE-PEGA-COOKIE-NAME
Selector:                 app=pega-minikube
Type:                     NodePort
IP Family Policy:         SingleStack
IP Families:              IPv4
IP:                       10.106.179.219
IPs:                      10.106.179.219
Port:                     http  80/TCP
TargetPort:               8080/TCP
NodePort:                 http  31101/TCP
Endpoints:                10.1.0.9:8080
Session Affinity:         None
External Traffic Policy:  Cluster
Internal Traffic Policy:  Cluster
Events:                   <none>

