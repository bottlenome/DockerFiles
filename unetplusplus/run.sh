#!/bin/bash

EXEC_PATH=${1:-/home/$USER}
COMMAND=${@:2:($#-1)}

docker run -it --gpus all \
               -w ${EXEC_PATH} \
               --shm-size=2gb \
               -v /etc/group:/etc/group:ro \
               -v /etc/passwd:/etc/passwd:ro \
               -v /home/$USER/:/home/$USER \
               -v /mnt:/mnt \
               -v /data:/data \
               -e nnUNet_raw_data_base=/home/${USER}/git/UNetPlusPlus/pytorch/data \
               -e nnUNet_preprocessed=/home/${USER}/git/UNetPlusPlus/pytorch/preprocessed \
               -e RESULTS_FOLDER=/home/${USER}/git/UNetPlusPlus/pytorch/data/trained/ \
               -u $(id -u $USER):$(id -g $USER) bottlenome/unetplusplus:latest ${COMMAND}
