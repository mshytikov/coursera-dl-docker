#
# Coursera-dl Docker file (https://github.com/coursera-dl/coursera)
#
# Usage and source:
# https://github.com/mshytikov/coursera-dl-docker.git
#

# Pull base image
FROM python:2.7-slim

#RUN pip install coursera-dl
###############################################################################
# This block will be removed after coursera will be published on PyPi

RUN pip install https://github.com/mshytikov/coursera/archive/add-setup.tar.gz#egg=coursera-dl-0.0.1
###############################################################################

VOLUME /downloads

ENTRYPOINT ["coursera-dl", "--path", "/downloads"]
