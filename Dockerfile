FROM debian:buster-slim
LABEL description="Custom mosquitto based on debian buster container image"
MAINTAINER Sofyan Arief <sofyan.89@gmail.com>
RUN apt update && apt install -y mosquitto
EXPOSE 1883
EXPOSE 9000
ENTRYPOINT ["/usr/sbin/mosquitto"]
CMD ["-c","/etc/mosquitto/mosquitto.conf"]
