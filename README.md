# Jenkins docker image

All jenkins data is stored in /var/jenkins_home,  which is mounted to /var/lib/jenkins on the host in the command below.

## commands
* `docker build -t ad-jenkins .`
* `docker rm jenkins`
* `docker run -d --restart always  --name jenkins  -p 8080:8080 -p 50000:50000 -v /var/lib/jenkins:/var/jenkins_home ad-jenkins`


