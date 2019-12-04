FROM alpine
MAINTAINER Tomas Jacik <tomas@jacik.cz>

RUN apk add --no-cache beanstalkd

ENV MAX_JOB_SIZE 65535
EXPOSE 11300

CMD /usr/bin/beanstalkd -u nobody -z $MAX_JOB_SIZE
