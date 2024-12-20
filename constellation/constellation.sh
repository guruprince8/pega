# git clone -b release/24.1.10 https://github.com/pegasystems/react-sdk.git
# git branch
# git status



docker run -p 3443:3443 -v /home/guru/pega/certs:/host_folder --name c11n-appstatic pega-docker.downloads.pega.com/constellation-appstatic-service/docker-image:latest port=3443 root=/usr/src/app/dist urlPath=/c11n-appstatic httpsKey=/host_folder/tomcat.key httpsCert=/host_folder/tomcat.crt



# CDN Service
docker run -p 1081:1080 pega-docker.downloads.pega.com/constellationui/cdn-onprem:8.8.4-ga-14

docker run -p 1081:1080 pega-docker.downloads.pega.com/constellationui/cdn-onprem:8.23.0-ga-100

docker run -p 1081:1080 pega-docker.downloads.pega.com/constellationui/cdn-onprem:24.1.0-ga-28


http://localhost:1081/

http://localhost:1081/8.23.0-ga-100/react/prod/buildinfo.json


cd /usr/share/nginx/static/react/prod

cd /usr/share/nginx/static/react/prod/
