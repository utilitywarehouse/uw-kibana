FROM node:10

ENV KIBANA_VERSION="6.4.0"

RUN \
 apt-get update && \
 mkdir -p /opt/kibana && \
 cd /opt/kibana && \
 wget https://artifacts.elastic.co/downloads/kibana/kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz && \
 tar -zxvf kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz --strip 1 && \
 rm kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz

WORKDIR /opt/kibana/bin

CMD ["./kibana"]
