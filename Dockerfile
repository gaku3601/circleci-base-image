FROM linuxbrew/linuxbrew:1.6.3

RUN sudo apt-get update
RUN brew -v

# tools install
RUN brew install faas-cli
RUN faas-cli version

RUN brew install docker
RUN docker -v

RUN sudo apt-get install -y supervisor
ADD supervisord.conf /etc/supervisord.conf

# 起動
CMD /usr/bin/supervisord -c /etc/supervisord.conf
