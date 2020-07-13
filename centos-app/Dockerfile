FROM ubi8/ubi:latest
MAINTAINER Simon Reber <sreber@redhat.com>

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs module install postgresql:9.6 && \
    yum clean all

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

EXPOSE 8080
CMD ["server.sh", "start"]
