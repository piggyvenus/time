FROM registry.access.redhat.com/rhel7
MAINTAINER Veer Muchandi veer@redhat.com
COPY ./init.sh ./
RUN yum install nmap-ncat --disablerepo=* --enablerepo=rhel-7-server-rpms -y 
ENV JAVA_VERSION 8u161
ENV BUILD_VERSION b161

# Upgrading system
RUN yum -y upgrade
RUN yum -y install wget

# Downloading Java
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm

RUN yum -y install /tmp/jdk-8-linux-x64.rpm

RUN alternatives --install /usr/bin/java jar /usr/java/latest/bin/java 200000
RUN alternatives --install /usr/bin/javaws javaws /usr/java/latest/bin/javaws 200000
RUN alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000
RUN yum clean all -y 
ENV JAVA_HOME /usr/java/latest
 
RUN chown 1001:1001 init.sh && chmod o+w init.sh
EXPOSE 8080
CMD ["./init.sh"]
