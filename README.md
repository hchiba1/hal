# Hierarchical Alignment (HAL) Format
The original source repository is https://github.com/ComparativeGenomicsToolkit/hal.
```
Copyright (C) 2012 - 2014 by Glenn Hickey (hickey@soe.ucsc.edu)
Copyright (C) 2012-2023 by UCSC Computational Genomics Lab
Released under the MIT license, see LICENSE.txt
```

## Docker version
This repository provides a Docker version of the specific command included in **HAL**.
* The Docker version of `hal2maf` is available on Docker Hub (https://hub.docker.com/r/hchiba1/hal2maf).

### Usage
```
$ docker run --rm -v $(pwd):/work hchiba1/hal2maf example.hal example.maf
```
