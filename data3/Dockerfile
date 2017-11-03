FROM busybox
MAINTAINER Shanna Chan shchan@redhat.com
ADD ./init.sh ./
COPY index.html ./
RUN chown 1001:1001 init.sh && chmod o+w init.sh
USER 1001
EXPOSE 8080
CMD ["./init.sh"]
