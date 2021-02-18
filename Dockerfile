FROM ubuntu:20.04
LABEL Author=sminot@fredhutch.org

# Install
#  - Python
#  - pandas
#  - numpy
#  - interop
#  - matplotlib
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && \
    apt install -y python3 python3-pip

RUN pip3 install \
    pandas \
    numpy \
    interop \
    matplotlib
    