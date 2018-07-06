FROM node
RUN mkdir -p /opt/kibana
WORKDIR /opt/kibana

RUN apt-get update
RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-6.3.0-linux-x86_64.tar.gz
RUN tar -zxvf kibana-6.3.0-linux-x86_64.tar.gz --strip 1
RUN rm kibana-6.3.0-linux-x86_64.tar.gz

WORKDIR /opt/kibana/bin

CMD ["./kibana"]
