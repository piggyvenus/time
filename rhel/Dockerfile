FROM registry.access.redhat.com/rhel7
MAINTAINER Veer Muchandi veer@redhat.com
ADD ./init.sh ./
RUN yum install nmap-ncat --disablerepo=* --enablerepo=rhel-7-server-rpms -y && yum install wget -y && yum clean all -y 
RUN wget http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.rpm
RUN chown 1001:1001 init.sh && chmod o+w init.sh
EXPOSE 8080
CMD ["./init.sh"]
