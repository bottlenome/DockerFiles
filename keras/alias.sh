#!/bin/bash
alias keras=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run.sh $PWD python3'
alias keras.jupyter=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run_port.sh $PWD jupyter notebook --ip=*'
