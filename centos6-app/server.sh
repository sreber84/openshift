#!/bin/bash

. /etc/tomcat/tomcat.conf
. /usr/libexec/tomcat/preamble

env

MAIN_CLASS=org.apache.catalina.startup.Bootstrap

FLAGS="$JAVA_OPTS"
OPTIONS="-Dcatalina.base=$CATALINA_BASE \
-Dcatalina.home=$CATALINA_HOME \
-Djava.endorsed.dirs=$JAVA_ENDORSED_DIRS \
-Djava.io.tmpdir=$CATALINA_TMPDIR \
-Djava.util.logging.config.file=${LOGGING_PROPERTIES} \
-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager"

if [ "$1" = "start" ] ; then
  FLAGS="${FLAGS} $CATALINA_OPTS"
  if [ "${SECURITY_MANAGER}" = "true" ] ; then
    OPTIONS="${OPTIONS} \
    -Djava.security.manager \
    -Djava.security.policy==${CATALINA_BASE}/conf/catalina.policy"
  fi
  run start
elif [ "$1" = "stop" ] ; then
  run stop
fi
