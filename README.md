# Hierarchical Alignment (HAL) Format
The original source repository is https://github.com/ComparativeGenomicsToolkit/hal.
```
Copyright (C) 2012 - 2014 by Glenn Hickey (hickey@soe.ucsc.edu)
Copyright (C) 2012-2023 by UCSC Computational Genomics Lab
Released under the MIT license, see LICENSE.txt
```

## Docker version of HAL tools
The [Dockerfile](https://github.com/hchiba1/hal/blob/main/Dockerfile) of this repository provides a Docker version of a specific command.
* The Docker version of `hal2maf` is available on Docker Hub (https://hub.docker.com/r/hchiba1/hal2maf).

### Usage
```
$ ls
example.hal
$ docker run --rm -v $(pwd):/work hchiba1/hal2maf example.hal example.maf
$ ls
example.hal example.maf
```
