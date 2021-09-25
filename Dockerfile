#FROM python:3
FROM nucleardreamer/libfreenect2:0.2.0
WORKDIR /workspace
#COPY . .
CMD python3 ./test.py
RUN test.py
#ENTRYPOINT ["python3"]