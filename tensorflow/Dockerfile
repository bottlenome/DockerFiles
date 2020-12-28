FROM tensorflow/tensorflow:1.5.1-devel-gpu-py3
ENV LANG C.UTF-8
ENV LANGUAGE en_US:

RUN apt-get update && apt-get install -y \
  git \
  python3-tk

RUN pip3 install Pillow scikit-image psutil
