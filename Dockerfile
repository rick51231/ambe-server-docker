FROM debian:buster

WORKDIR /tmp

RUN apt-get update --allow-releaseinfo-change && apt install -y wget
RUN wget http://dvswitch.org/buster
RUN chmod +x buster
RUN ./buster
RUN apt-get update && apt-get install -y systemctl
RUN apt-get install -y md380-emu
RUN systemctl disable md380-emu

WORKDIR /opt/md380-emu

CMD /usr/bin/qemu-arm-static /opt/md380-emu/md380-emu -S 2470
