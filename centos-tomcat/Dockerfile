FROM centos:7
MAINTAINER Simon Reber <sreber@redhat.com>

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install java-1.8.0-openjdk.x86_64 tomcat && \
    yum clean all

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

ADD run-java.sh /usr/local/bin/
ADD server.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run-java.sh"]

EXPOSE 8080
CMD ["/usr/local/bin/server.sh", "start"]