FROM ubuntu
MAINTAINER Grégoire Audoux <projects@gregoire-audoux.fr>

ADD btsync/btsync btsync

VOLUME ["/data"]
EXPOSE 8888

CMD /btsync --nodaemon --webui.listen 0.0.0.0:8888