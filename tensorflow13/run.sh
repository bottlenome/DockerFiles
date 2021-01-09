#!/bin/bash

EXEC_PATH=${1:-/home/$USER}
COMMAND=${@:2:($#-1)}

docker run -it --gpus all \
               -w ${EXEC_PATH} \
               -e DISPLAY=$DISPLAY \
               -v /tmp/.X11-unix:/tmp/.X11-unix \
               -v /etc/group:/etc/group:ro \
               -v /etc/passwd:/etc/passwd:ro \
               -v /home/$USER/:/home/$USER \
               -v /mnt:/mnt \
               -u $(id -u $USER):$(id -g $USER) bottlenome/tensorflow13:latest ${COMMAND}
