FROM frolvlad/alpine-oraclejdk8

ADD http://iweb.dl.sourceforge.net/project/sigar/sigar/1.6/hyperic-sigar-1.6.4.tar.gz /hyperic-sigar-1.6.4.tar.gz
RUN tar zxvf /hyperic-sigar-1.6.4.tar.gz && \
    mv /hyperic-sigar-1.6.4/sigar-bin/lib/libsigar-amd64-linux.so /lib/libsigar-amd64-linux.so && \
    chmod +x /lib/libsigar-amd64-linux.so

ADD target/scala-2.11/example.jar /usr/share/oncue/example.jar

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/oncue/example.jar"]
