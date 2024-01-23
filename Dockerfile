FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]
RUN apt update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get install -y python3-pip git rsync wget cmake doxygen graphviz \
build-essential clang-tidy cppcheck openjdk-17-jdk npm docker docker-compose \
libboost-all-dev nodejs libssl-dev libsqlite3-dev clang-format curl rfkill \
libpcap-dev libevent-dev pkg-config libcap-dev dos2unix

COPY --chmod=755 *.sh /root/
RUN dos2unix /root/*.sh
RUN /root/create-env.sh
RUN /root/build-iso15118.sh
RUN /root/build-everest.sh

CMD ["ls","-l"]