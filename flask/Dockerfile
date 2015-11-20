FROM anapsix/alpine-java

ENV FUNNEL_VERSION=5.1.1-SNAPSHOT

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

ADD flask-assembly-${FUNNEL_VERSION}.jar /usr/share/oncue/flask.jar

CMD ["/tmp/entrypoint.sh"]
