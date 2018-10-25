#!/bin/sh

_forwardTerm () {
 echo "Caugth signal SIGTERM, passing it to child processes..."
 cpids=$(pgrep -P $$ | xargs)
 kill -15 $cpids 2> /dev/null
 wait
 exit $?
}

trap _forwardTerm TERM

nami start --foreground phabricator &

DAEMON=httpd
EXEC=$(which $DAEMON)
ARGS="-f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND"

info "Starting ${DAEMON}..."
${EXEC} ${ARGS} & 
wait
