FROM python:alpine
MAINTAINER Robin van der Linde (robin.vanderlinde@gmail.com)
RUN apk add --no-cache git ffmpeg
RUN pip install git+https://github.com/mapillary/Piexif
RUN pip install --upgrade git+https://github.com/mapillary/mapillary_tools
CMD /bin/bash