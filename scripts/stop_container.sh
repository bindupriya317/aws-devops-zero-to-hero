#!/bin/bash
set -e

# Stop and remove running containers (if any)
containerId=$(docker ps -q)

if [ -n "$containerId" ]; then
  docker rm -f $containerId
else
  echo "No running containers found"
fi
