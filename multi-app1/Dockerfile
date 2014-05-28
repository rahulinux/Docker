FROM ubuntu/fresh-lxc

MAINTAINER Rahul Patil <rahul.patil@raweng.com>

RUN apt-get update
RUN apt-get install redis-server supervisor openssh-server -y

RUN mkdir -p /var/run/sshd /var/log/supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN sed -i 's/^rdbcompression yes/rdbcompression no/g' /etc/redis/redis.conf
RUN sed -i 's/^yppendonly no/appendonly yes/g' /etc/redis/redis.conf
RUN sed -i 's/^yppendonly no/appendonly yes/g' /etc/redis/redis.conf
RUN sed -i 's/^bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis/redis.conf
RUN apt-get install build-essential python libssl-dev -y 
RUN apt-get install python-software-properties pkg-config -y 
RUN wget -cnd http://nodejs.org/dist/v0.10.24/node-v0.10.24.tar.gz 
RUN tar -xzvf node-*.tar.gz 
RUN ls -rlht node*
RUN cd node-* && ./configure && make && make install 
RUN echo "export PATH=\$PATH:/usr/loca/node/bin/" >> /etc/profile
RUN wget -O /usr/local/src/test.js https://raw.githubusercontent.com/rahulinux/scripts/master/test.js 

EXPOSE 6379 8000

CMD ["/usr/bin/supervisord"] 
