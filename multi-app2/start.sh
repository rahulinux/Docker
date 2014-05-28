echo "root:x" | chpasswd
mkdir /root/.ssh
service ssh start
service redis-server start
node /usr/local/src/test.js
