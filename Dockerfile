FROM python:3.9.15

WORKDIR /app
COPY requirements.txt /app
RUN pip3 install  -i https://mirrors.aliyun.com/pypi/simple/  --trusted-host mirrors.aliyun.com  -r requirements.txt --no-cache-dir
COPY . /app 
EXPOSE 8000
ENV SEARXNG_BASE_URL=http://searxng:8080
ENV OPENAI_URL=http://:3040/v1/
ENTRYPOINT ["python3"] 
CMD ["server.py"]
