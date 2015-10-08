# docker
docker images  

## commands
* `docker build -t ad-jenkins .`
* `docker rm jenkins`
* `docker run -d --restart always  --name jenkins  -p 8080:8080 -p 50000:50000 -v /var/lib/jenkins:/var/jenkins_home adjenkins`
   
   
