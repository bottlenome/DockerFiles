#!/bin/bash
alias unetplusplus=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run.sh $PWD '
alias unetplusplus.jupyter=$(cd $(dirname ${BASH_SOURCE:$0}); pwd)'/run_port.sh $PWD jupyter notebook --ip=*'
