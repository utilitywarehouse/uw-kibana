FROM node:8.14.0-alpine

ENV KIBANA_VERSION="6.5.4"

RUN \
 mkdir -p /opt/kibana && \
 cd /opt/kibana && \
 wget https://artifacts.elastic.co/downloads/kibana/kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz && \
 tar -zxvf kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz --strip 1 && \
 rm kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz

RUN \
 rm /opt/kibana/node/bin/node && \
 ln -s /usr/local/bin/node /opt/kibana/node/bin/node

WORKDIR /opt/kibana/bin

CMD ["./kibana"]
