FROM ubuntu:16.04

ENV PATH "$PATH:/bin"

VOLUME ["/default.etcd"]

RUN apt-get update && apt-get install -y python python-pip
RUN pip install supervisor

ADD hyperkube-v1.2.2 /bin/hyperkube
ADD kubectl-v1.2.2 /bin/kubectl
ADD etcd-v2.2.2 /bin/etcd

ADD supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
