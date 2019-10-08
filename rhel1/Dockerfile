FROM registry.access.redhat.com/rhel7
MAINTAINER Veer Muchandi veer@redhat.com
COPY ./init.sh ./

RUN chmod +x init.sh
USER 1001
EXPOSE 8080
CMD ["./init.sh"]
