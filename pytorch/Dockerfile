FROM  pytorch/pytorch:1.8.0-cuda11.1-cudnn8-devel
ENV LANG C.UTF-8
ENV LANGUAGE en_US:

RUN apt-get update && apt-get install -y \
  git
RUN pip install deap
RUN pip install git+https://github.com/bottlenome/mlem
RUN pip install matplotlib jupyter tensorboard
RUN pip install skorch torchviz
RUN apt-get update && apt-get install -y graphviz
RUN pip install git+https://github.com/ildoonet/pytorch-gradual-warmup-lr.git
RUN pip install einops
