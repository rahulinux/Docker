FROM app-server:0.4

MAINTAINER Rahul Patil <rahul.patil@raweng.com>

RUN echo "root:x" | chpasswd

ADD start.sh /usr/bin/start.sh
 
EXPOSE 6379 8000

CMD ["/bin/bash" "/usr/bin/start.sh"] 
