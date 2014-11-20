#
# Coursera-dl Docker file (https://github.com/coursera-dl/coursera)
#
# Usage and source:
# https://github.com/mshytikov/coursera-dl-docker.git
#

# Pull base image
FROM ubuntu:trusty


RUN apt-get update && apt-get install -y git python-pip

#RUN pip install coursera
###############################################################################
# This block will be removed after coursera will be published on PyPi

# RUN git clone https://github.com/coursera-dl/coursera.git
RUN git clone -b add-setup https://github.com/mshytikov/coursera.git
WORKDIR /coursera
RUN python setup.py build sdist && pip install dist/coursera-dl-*.tar.gz
###############################################################################

VOLUME /downloads

ENTRYPOINT ["coursera-dl", "--path", "/downloads"]
