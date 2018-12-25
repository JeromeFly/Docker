FROM alpine:3.8
RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g" /etc/apk/repositories \
    && apk add python
COPY ./hello.py /
CMD python /hello.py
