FROM ubuntu:latest
ADD install.sh /install.sh
RUN /install.sh

ADD cloner.sh /cloner.sh
RUN /cloner.sh

ADD configure.sh /configure.sh
RUN /configure.sh

ADD clis.sh /clis.sh
RUN /clis.sh

ADD profile /root/.profile
ADD gitconfig /root/.gitconfig
