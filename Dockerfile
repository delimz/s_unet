FROM delimz/base2:latest

COPY hello.py /app/

RUN git clone https://github.com/delimz/unet.git && cd unet && git checkout ded4df4

WORKDIR /app

ENTRYPOINT ["python3","/app/hello.py"]
