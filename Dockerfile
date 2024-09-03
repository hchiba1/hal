FROM ubuntu:20.04

WORKDIR /opt

RUN apt-get update \
 && apt-get install -y --no-install-recommends git ca-certificates build-essential libhdf5-dev \
 && git clone https://github.com/ComparativeGenomicsToolkit/hal.git \
 && git clone https://github.com/ComparativeGenomicsToolkit/sonLib.git \
 && cd /opt/sonLib && make \
 && cd /opt/hal && make \
 && cp -a /opt/hal/bin/hal2maf /opt \
 && rm -rf /opt/hal /opt/sonLib \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /work

ENTRYPOINT ["/opt/hal2maf"]
