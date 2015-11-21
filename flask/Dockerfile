FROM frolvlad/alpine-oraclejdk8

ENV FUNNEL_VERSION=5.1.1

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

ADD http://iweb.dl.sourceforge.net/project/sigar/sigar/1.6/hyperic-sigar-1.6.4.tar.gz /hyperic-sigar-1.6.4.tar.gz
RUN tar zxvf /hyperic-sigar-1.6.4.tar.gz && \
    mv /hyperic-sigar-1.6.4/sigar-bin/lib/libsigar-amd64-linux.so /lib/libsigar-amd64-linux.so && \
    chmod +x /lib/libsigar-amd64-linux.so

# for local testing
# ADD libsigar-amd64-linux.so /lib/libsigar-amd64-linux.so

ADD http://dl.bintray.com/oncue/releases/oncue/funnel/flask_2.10/${FUNNEL_VERSION}/flask_2.10-${FUNNEL_VERSION}-assembly.jar /usr/share/oncue/flask.jar
# for local testing
# ADD flask-assembly-${FUNNEL_VERSION}.jar /usr/share/oncue/flask.jar

CMD ["/tmp/entrypoint.sh"]
