FROM delimz/base2:latest

COPY hello.py /app/

ADD https://api.github.com/repos/delimz/unet/git/refs/heads/master version.json
RUN git clone https://github.com/delimz/unet.git

WORKDIR /app

ENTRYPOINT ["python3","/app/hello.py"]
