# FASTQC
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER Adelaide Rhodes <adelaide.rhodes@gmail.com>

# Install OpenJDK 7 JRE
#RUN apt-get update && apt-get install --yes \
#    default-jre \
#    unzip \
#    perl-doc \
#    perl 
#    docker

# Download FastQC
#ADD http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4.zip /tmp/

# Install FastQC
#RUN cd /usr/local && \
#    unzip /tmp/fastqc_*.zip && \
#    chmod 755 /usr/local/FastQC/fastqc && \
#    ln -s /usr/local/FastQC/fastqc /usr/local/bin/fastqc && \
#    rm -rf /tmp/fastqc_*.zip

#ENTRYPOINT ["fastqc"]

#ENTRYPOINT ["/bin/bash"]

RUN apt-get update && apt-get install -y fastqc perl-doc
CMD bash
