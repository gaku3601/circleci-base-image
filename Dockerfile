FROM linuxbrew/linuxbrew:1.6.3

RUN sudo apt-get update
RUN brew -v

# tools install
RUN brew install faas-cli
RUN faas-cli version

#RUN brew install docker
RUN set -x &&\
    VER="17.03.0-ce" &&\
    echo $VER &&\
    curl -L -o /tmp/docker-$VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz &&\
    ls /tmp &&\
    tar -xz -C /tmp -f /tmp/docker-$VER.tgz &&\
    sudo mv /tmp/docker/* /usr/bin
RUN docker -v

#RUN sudo apt-get install -y supervisor
#ADD supervisord.conf /etc/supervisord.conf

# 起動
#CMD /usr/bin/supervisord -c /etc/supervisord.conf
