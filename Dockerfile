FROM salesforce/cli:latest-slim
LABEL Name=salesforcecicddocker Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]

ENV SHELL /bin/bash
ENV DEBIAN_FRONTEND=noninteractive

