FROM python:2.7.17-alpine
MAINTAINER Robin van der Linde (robin.vanderlinde@gmail.com)
RUN apk add --no-cache git ffmpeg gcc libjpeg musl-dev shellinabox --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN pip install git+https://github.com/mapillary/Piexif
RUN pip install --upgrade git+https://github.com/mapillary/mapillary_tools
RUN passwd -d root
RUN echo '#...' >> /etc/securetty
RUN echo 'pts/0' >> /etc/securetty
RUN echo 'pts/1' >> /etc/securetty
RUN echo '#...' >> /etc/securetty
EXPOSE 4200
ENTRYPOINT shellinaboxd --disable-ssl