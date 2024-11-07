cat <<EOF | cfssl genkey - | cfssljson -bare server
{
  "hosts": [
    "my-svc.my-namespace.svc.cluster.local",
    "my-pod.my-namespace.pod.cluster.local",
    "192.0.2.24",
    "10.0.34.2"
  ],
  "CN": "my-pod.my-namespace.pod.cluster.local",
  "key": {
    "algo": "ecdsa",
    "size": 256
  }
}
EOF

cat <<EOF | cfssl genkey - | cfssljson -bare server
{
  "hosts": [
    "192.168.1.220"
  ],
  "CN": "192.168.1.220",
  "key": {
    "algo": "ecdsa",
    "size": 256
  }
}
EOF

2024/11/06 21:30:36 [INFO] generate received request
2024/11/06 21:30:36 [INFO] received CSR
2024/11/06 21:30:36 [INFO] generating key: ecdsa-256
2024/11/06 21:30:36 [INFO] encoded CSR

cat <<EOF | cfssl gencert -initca - | cfssljson -bare ca
{
  "CN": "My Example Signer",
  "key": {
    "algo": "rsa",
    "size": 2048
  }
}
EOF

2024/11/06 21:32:26 [INFO] generating a new CA key and certificate from CSR
2024/11/06 21:32:26 [INFO] generate received request
2024/11/06 21:32:26 [INFO] received CSR
2024/11/06 21:32:26 [INFO] generating key: rsa-2048
2024/11/06 21:32:26 [INFO] encoded CSR
2024/11/06 21:32:26 [INFO] signed certificate with serial number 265001280942002430649034564818011394300014212413
