FROM pblittle/docker-logstash

COPY default.json /opt/logstash/vendor/kibana/app/dashboards/default.json


EXPOSE 12201/UDP
EXPOSE 9200
EXPOSE 9292
