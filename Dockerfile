FROM delimz/base2:latest

COPY hello.py /app/

RUN git clone https://github.com/delimz/unet.git && cd unet && git checkout bb9a8be

WORKDIR /app

ENTRYPOINT ["python3","/app/hello.py"]
