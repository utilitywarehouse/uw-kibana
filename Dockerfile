FROM registry.uw.systems/base_images/uw-alpine-node:v7
RUN mkdir -p /opt/kibana
WORKDIR /opt/kibana

RUN apk --update add --no-cache wget ca-certificates bash
RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-5.3.0-linux-x86_64.tar.gz
RUN tar -zxvf kibana-5.3.0-linux-x86_64.tar.gz --strip 1
RUN rm kibana-5.3.0-linux-x86_64.tar.gz
run rm -rf /opt/kibana/node

WORKDIR /opt/kibana/bin

CMD ["./kibana"]
