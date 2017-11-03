FROM busybox
MAINTAINER Shanna Chan shchan@redhat.com
RUN mkdir -p /opt/data/
ADD ./init.sh ./
COPY index.html /usr/share/nginx/html/
COPY index2.html /opt/data/
RUN chown 1001:1001 init.sh && chmod o+w init.sh
USER 1001
EXPOSE 8080
CMD ["./init.sh"]
