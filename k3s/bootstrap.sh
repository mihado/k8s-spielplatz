#!/bin/bash
set -e

export NODE_1="192.168.0.50"
export NODE_2="192.168.0.51"
export NODE_3="192.168.0.52"
export USER=vagrant

# The first server starts the cluster
k3sup install \
  --cluster \
  --user $USER \
  --ip $NODE_1

# The second node joins
k3sup join \
  --server \
  --ip $NODE_2 \
  --user $USER \
  --server-user $USER \
  --server-ip $NODE_1

# The third node joins
k3sup join \
  --server \
  --ip $NODE_3 \
  --user $USER \
  --server-user $USER \
  --server-ip $NODE_1
