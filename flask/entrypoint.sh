#!/usr/bin/env ash

echo "waiting for elasticsearch"
while true; do
  nc -n -i 1 elasticsearch 9200 2>/dev/null && break
done

echo "starting flask:"
/usr/bin/java -jar \
  /usr/share/oncue/flask.jar \
  -Dlogback.configurationFile=/usr/share/oncue/etc/logback.xml \
  -XX:+UseStringDeduplication \
  -XX:+UseG1GC \
  -XX:MaxGCPauseMillis=600 \
  -XX:+HeapDumpOnOutOfMemoryError
