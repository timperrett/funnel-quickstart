#!/usr/bin/env bash

echo "waiting for elasticsearch"
while true; do
    nc -q 1 elasticsearch 9200 2>/dev/null && break
done

echo "starting flask..."
java -jar \
  /usr/share/oncue/flask.jar \
  -Dlogback.configurationFile=${{chdir}}/etc/logback.xml
  -XX:+UseStringDeduplication \
  -XX:+UseG1GC \
  -XX:MaxGCPauseMillis=600 \
  -XX:+HeapDumpOnOutOfMemoryError
