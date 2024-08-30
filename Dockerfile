FROM ubuntu:20.04

RUN apt-get update \
 && apt-get install -y git build-essential libhdf5-dev

WORKDIR /opt
RUN git clone https://github.com/ComparativeGenomicsToolkit/hal.git
RUN git clone https://github.com/ComparativeGenomicsToolkit/sonLib.git

RUN cd /opt/sonLib && make \
 && cd /opt/hal && make \
 && cp -a /opt/hal/bin/hal2maf /opt \
 && cd /opt && rm -rf hal sonLib

WORKDIR /work

ENTRYPOINT ["/opt/hal2maf"]
