#FROM python:3
FROM nucleardreamer/libfreenect2:0.2.0
WORKDIR /workspace
COPY . .
CMD ["test.py"]
#ENTRYPOINT ["python3"]