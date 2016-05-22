#!/bin/bash


docker run --name=kubernetes \
	   -d \
           -p 8080:8080 \
           -v /var/run/docker.sock:/var/run/docker.sock \
	   -v /:/rootfs:ro \
	   -v /sys:/sys:ro \
	   -v /var/lib/docker/:/var/lib/docker:rw \
           -v /var/lib/kubelet/:/var/lib/kubelet:rw \
	   -v /var/run:/var/run:rw \
           --net=host \
	   --pid=host \
	   --privileged \
	   nickschuch/kubernetes
