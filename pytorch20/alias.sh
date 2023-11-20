#!/bin/bash
alias pytorch20=$(cd $(dirname ${BASH_SOURCE}); pwd)'/run.sh $PWD python'
alias pytorch20.jupyter=$(cd $(dirname ${BASH_SOURCE}); pwd)'/run_port.sh $PWD jupyter notebook --ip=*'
alias pytorch20.tensorboard=$(cd $(dirname ${BASH_SOURCE}); pwd)'/run_port.sh $PWD tensorboard --port 8888 --bind_all --logdir=./runs'
alias pytorch20.cmd=$(cd $(dirname ${BASH_SOURCE}); pwd)'/run.sh $PWD'
