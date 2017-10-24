FROM 172.30.245.116:5000/sreber-build/centos-tomcat
MAINTAINER Simon Reber <sreber@redhat.com>

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install java-1.8.0-openjdk.x86_64 tomcat perl && \
    yum clean all

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

EXPOSE 8080
CMD ["server.sh", "start"]
