FROM ubuntu:16.04
MAINTAINER Adelaide Rhodes <adelaide.rhodes@gmail.com>

#RUN apt-get update && apt-get install -y fastqc perl-doc
# Setup packages
USER root

RUN apt-get -m update && apt-get install -y wget unzip zip perl-doc

# get the tool and install it in /usr/local/bin
RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5_source.zip

RUN unzip fastqc_v0.11.5_source.zip && \
    rm fastqc_v0.11.5_source.zip && \
    mv fastqc_v0.11.5_source.zip /opt/
COPY bin/fastqc /usr/local/bin
RUN chmod a+x /usr/local/bin/fastqc

# switch back to the ubuntu user so this tool (and the files written) are not owned
RUN groupadd -r -g 1000 ubuntu && useradd -r -g ubuntu -u 1000 ubuntu
USER ubuntu

CMD bash
