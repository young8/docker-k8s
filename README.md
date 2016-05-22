Docker - Kubernetes
===================

Local test Kubernetes cluster.

## Usage

```bash
# Build the container
$ make

# Run the container
$ make run

# Get a shell console
$ docker exec -it k8s /bin/bash

# Run a container
$ kubectl run my-nginx --image=nginx --replicas=2

# Ensure the containers are running
$ kubectl get pods
```

