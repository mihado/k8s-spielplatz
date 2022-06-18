#!/bin/bash
set -e

export NODE_1="192.168.0.50"
export USER=vagrant

k3sup install \
  --cluster \
  --user $USER \
  --ip $NODE_1 \
  --skip-install
