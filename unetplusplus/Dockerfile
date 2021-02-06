FROM  pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime
ENV LANG C.UTF-8
ENV LANGUAGE en_US:

RUN apt-get update && apt-get install -y \
  git
RUN git clone https://github.com/MrGiovanni/UNetPlusPlus.git
RUN cd UNetPlusPlus/pytorch; pip install git+https://github.com/MIC-DKFZ/batchgenerators.git
RUN cd UNetPlusPlus/pytorch; pip install -e .
RUN pip install tensorboard torchio
RUN pip install notebook
