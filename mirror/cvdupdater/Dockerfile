FROM centos:8
MAINTAINER Stefan Schueffler <s.schueffler@softgarden.de>

RUN    yum -y update \
    && yum -y install python3-pip \
    && python3 -m pip install cvdupdate \
    && yum clean all \
    && mkdir -p /data \
    && cvd config set --dbdir /data

ADD entrypoint.sh /

VOLUME ["/data"]

CMD ["/entrypoint.sh"]
