FROM openjdk:8-jre-alpine

WORKDIR /robocode

ENV FC_LANG=en-US \
    ROBO_LINK=https://sourceforge.net/projects/robocode/files/robocode/1.9.3.9/robocode-1.9.3.9-setup.jar/download

RUN apk add --no-cache ttf-dejavu openssl
RUN wget $ROBO_LINK -O /tmp/robocode-setup.jar
RUN unzip /tmp/robocode-setup.jar && \
    rm /tmp/robocode-setup.jar && \
    chmod 777 -R /robocode && \
    chmod +x robocode.sh

CMD env | sort && ./robocode.sh
