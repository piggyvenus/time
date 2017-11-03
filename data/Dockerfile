FROM busybox
MAINTAINER Shanna Chan shchan@redhat.com
COPY index.html / 
ADD ./init.sh ./
RUN chown 1001:1001 init.sh && chmod o+w init.sh
USER 1001
