keytool -genkey -keyalg RSA -alias tomcat -keystore tomcat.jks -storepass tomcat -validity 360 -keysize 2048 -ext SAN=dns:allendc630,ip:127.0.0.1,ip:192.168.1.223,ip:192.168.1.221,dns:Mac.attlocal.net
keytool --list -v -keystore tomcat.jks
cat tomcat.jks | base64 -w 0
