#!/bin/bash
alias pytorch=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run.sh $PWD python'
alias pytorch.jupyter=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run_port.sh $PWD jupyter notebook --ip=*'
alias pytorch.tensorboard=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run_port.sh $PWD tensorboard --port 8888 --bind_all --logdir=./runs'
