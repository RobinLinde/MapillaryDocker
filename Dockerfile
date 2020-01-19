FROM python:2.7.17-alpine
MAINTAINER Robin van der Linde (robin.vanderlinde@gmail.com)
RUN apk add --no-cache git ffmpeg gcc libjpeg musl-dev
RUN pip install git+https://github.com/mapillary/Piexif
RUN pip install --upgrade git+https://github.com/mapillary/mapillary_tools
ENTRYPOINT /bin/sh