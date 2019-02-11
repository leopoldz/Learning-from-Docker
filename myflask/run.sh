#!/bin/bash
image=ceph/daemon-base:latest-mimic
docker run --rm -v $PWD/app:/app -p 5000:5000 -it $image bash
