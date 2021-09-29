FROM python:3.9-slim

RUN pip install jupyter

RUN git clone https://github.com/OpenKinect/libfreenect2.git \

WORKDIR /workspace