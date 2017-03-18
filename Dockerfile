FROM resin/rpi-raspbian:jessie

RUN apt-get update
RUN apt-get install wget git-core python python-pip --yes --force-yes --no-install-recommends
RUN pip install paho-mqtt
RUN git clone https://github.com/jpmens/mqttwarn.git
RUN apt-get remove -y wget git-core python-pip
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

ADD mqttwarn.ini /mqttwarn.ini
ADD run.sh /run.sh

RUN chmod u+x /run.sh

VOLUME ["/mqttwarn/config", "/mqttwarn/log"]

ENTRYPOINT /run.sh
