#!/bin/sh
cp index.html /opt/data/
#while true; do echo -e "HTTP/1.1 200 OK\n\n$(date)\nApplication Version 1: Host: $(tail -1 /etc/hosts| awk '{print $2}')" | nc -ll -p 8080; done

