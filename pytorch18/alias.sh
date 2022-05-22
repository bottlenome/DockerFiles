#!/bin/bash
alias pytorch18=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run.sh $PWD python'
alias pytorch18.jupyter=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run_port.sh $PWD jupyter notebook --ip=*'
alias pytorch18.tensorboard=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run_port.sh $PWD tensorboard --port 8888 --bind_all --logdir=./runs'
