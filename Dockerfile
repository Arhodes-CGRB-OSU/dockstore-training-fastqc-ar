FROM ubuntu:16.04
MAINTAINER Adelaide Rhodes <adelaide.rhodes@gmail.com>

RUN apt-get update && apt-get install -y fastqc perl-doc

CMD bash
