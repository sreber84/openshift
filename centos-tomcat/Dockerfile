FROM centos:7
MAINTAINER Simon Reber <sreber@redhat.com>

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install java-1.8.0-openjdk.x86_64 tomcat && \
    yum clean all

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

ADD container-limits /usr/local/bin/
ADD server.sh /usr/local/bin/

RUN mkdir -p /usr/local/fvp/fvpTmpDir
RUN chmod 777 -R /usr/local/fvp/

ENTRYPOINT ["/usr/local/bin/container-limits"]

EXPOSE 8080
CMD ["server.sh", "start"]
