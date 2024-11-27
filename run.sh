#!/bin/bash
docker run -d --gpus all --ulimit memlock=-1 --ulimit stack=67108864 \
-v `pwd`/volume:/workspace/ \
--restart always \
--name my-container my-pytorch-image:1.0