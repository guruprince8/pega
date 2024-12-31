keytool -genkey -keyalg RSA -alias tomcat -keystore tomcat.jks -storepass tomcat -validity 360 -keysize 2048 -ext SAN=dns:allendc630,ip:127.0.0.1,ip:192.168.1.223,ip:192.168.1.221,dns:Mac.attlocal.net
keytool --list -v -keystore tomcat.jks
cat tomcat.jks | base64 -w 0
keytool -importkeystore -srckeystore tomcat.jks -destkeystore tomcat.p12 -deststoretype PKCS12
openssl pkcs12 -in tomcat.p12 -nokeys -out tomcat.crt
openssl pkcs12 -in tomcat.p12 -nocerts -nodes -out tomcat.key
