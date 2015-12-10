FROM ubuntu:latest
MAINTAINER Jiu Ai <admin@9ikj.cn> 

# Install packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server pwgen
RUN mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config && sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config

# Install wget tar screen packages
RUN apt-get -y install wget tar screen

# Download and install LNMP.
RUN echo 'wget -c http://static.suod.ga/lnmp/lnmp1.2-full.tar.gz && tar zxf lnmp1.2-full.tar.gz -C root && rm -rf lnmp1.2-full.tar.gz'

#Change 163 mirrors
ADD sources.list /etc/apt/sources.list

ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

ENV AUTHORIZED_KEYS **None**
ENV ROOT_PASS **RANDOM**

VOLUME ["/home"]

EXPOSE 22 80 3306

CMD ["/run.sh"]
