FROM continuumio/anaconda

MAINTAINER Guan Wang

WORKDIR /root

RUN apt-get update

RUN conda create -n comma python=2.7

RUN /bin/bash -c 'source activate comma'

# Only the CPU version of TensorFlow is available at the moment
RUN conda install -c conda-forge tensorflow

RUN pip install keras

RUN pip install h5py pyzmq

RUN git clone https://github.com/commaai/research.git

