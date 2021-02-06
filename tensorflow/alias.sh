#!/bin/bash
alias tensorflow=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run.sh $PWD python3'
alias tensorflow.jupyter=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run_port.sh $PWD jupyter notebook --ip=*'
