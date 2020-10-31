FROM tensorflow/tensorflow:1.5.1-devel-gpu-py3
ENV LANG C.UTF-8
ENV LANGUAGE en_US:

RUN apt-get update && apt-get install -y \
  git
RUN pip install keras==2.0.8
RUN pip install git+https://github.com/bottlenome/mlem
