FROM debian
RUN apt-get update &&  apt-get install -y openconnect xinetd ssh
COPY ssh-switch /etc/xinetd.d/ssh-switch
COPY vpnc.conf /etc/vpnc.conf
EXPOSE 2022
#RUN vpnc /etc/vpnc/vpnc.conf  --no-detach  --username gen192077

