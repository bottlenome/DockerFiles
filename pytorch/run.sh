#!/bin/bash
docker run -it -p 8888:8888 \
               -w /home/$USER/ \
               -v /etc/group:/etc/group:ro \
               -v /etc/passwd:/etc/passwd:ro \
               -v /home/$USER/:/home/$USER \
               -v /mnt:/mnt \
               -u $(id -u $USER):$(id -g $USER) bottlenome/pytorch:latest bash
