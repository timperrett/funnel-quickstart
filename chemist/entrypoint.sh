#!/usr/bin/env ash

echo "[chemist] waiting for flasks to come online..."
while true; do
  nc -n -i 1 elasticsearch 9200 2>/dev/null && break
done

echo "[chemist] starting server..."
/usr/bin/java -jar \
  /usr/share/oncue/chemist.jar \
  -Dlogback.configurationFile=/usr/share/oncue/etc/logback.xml \
  -XX:+UseStringDeduplication \
  -XX:+UseG1GC \
  -XX:+HeapDumpOnOutOfMemoryError
