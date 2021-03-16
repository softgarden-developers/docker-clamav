FROM centos:8
MAINTAINER Stefan Schueffler <s.schueffler@softgarden.de>

RUN    rpm --import http://download.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-8 \
    && yum -y install epel-release \
    && yum -y update \
    && yum -y install clamav-update clamd clamav-data \
    && yum clean all

RUN    set -x \
    && sed -ri ' \
            s/Example/#Example/g; \
            s/#Foreground/Foreground/g; \
            s/#LogTime/LogTime/g; \
            s/#TCPSocket/TCPSocket/g; \
            s/#StreamMaxLength 10M/StreamMaxLength 50M/g; \
            s/#MaxThreads 20/MaxThreads 50/g; \
            s/#ReadTimeout/ReadTimeout/g; \
            s/#DetectBrokenExecutables/DetectBrokenExecutables/g; \
            ' /etc/clamd.d/scan.conf \
    \
    && ln -s /etc/clamd.d/scan.conf /etc/clamd.conf

VOLUME ["/var/lib/clamav"]

EXPOSE 3310

ENTRYPOINT ["clamd"]
CMD []
