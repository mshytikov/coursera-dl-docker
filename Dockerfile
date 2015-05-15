#
# Coursera-dl Docker file (https://github.com/coursera-dl/coursera)
#
# Usage and source:
# https://github.com/mshytikov/coursera-dl-docker.git
#

# Pull base image
FROM python:2.7-slim

RUN pip install coursera

VOLUME /downloads

ENTRYPOINT ["coursera-dl", "--path", "/downloads"]
