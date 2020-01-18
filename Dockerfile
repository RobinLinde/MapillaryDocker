FROM python:alpine
MAINTAINER Robin van der Linde (robin.vanderlinde@gmail.com
COPY install.sh .
RUN ./install.sh
CMD /bin/bash