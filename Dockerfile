FROM linuxbrew/linuxbrew:1.6.3

RUN sudo apt-get update
RUN brew -v

# tools install
RUN brew install faas-cli
RUN faas-cli version

RUN brew install docker
RUN docker -v

#CMD sleep infinity
