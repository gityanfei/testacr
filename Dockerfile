FROM registry.cn-beijing.aliyuncs.com/ack-container/centos:7

ADD *.txt /tmp/

CMD ["sleep","99d"]
