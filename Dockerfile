FROM nucleardreamer/libfreenect2:0.2.0

RUN apt-get update \
    && apt-get install -y python-pip 

RUN pip install --upgrade pip && pip install jupyter

WORKDIR /workspace