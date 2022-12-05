FROM quay.io/aptible/ubuntu:18.04
LABEL Author=sminot@fredhutch.org

# Install
#  - Python
#  - pandas
#  - numpy
#  - interop
#  - matplotlib
#  - seaborn
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && \
    apt install -y python3 python3-pip

RUN pip3 install \
    pandas \
    numpy \
    interop==1.2.0 \
    matplotlib \
    seaborn
    
