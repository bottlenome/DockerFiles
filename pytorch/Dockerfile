FROM  pytorch/pytorch:1.4-cuda10.1-cudnn7-runtime
ENV LANG C.UTF-8
ENV LANGUAGE en_US:

RUN apt-get update && apt-get install -y \
  vim
RUN pip install deap
RUN pip install git+https://github.com/bottlenome/mlem
RUN pip install matplotlib jupyter tensorboard
