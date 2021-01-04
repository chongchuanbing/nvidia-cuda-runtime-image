# nvidia-cuda-runtime-image



#### Note
```
https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/dockerfiles/dockerfiles

https://hub.docker.com/r/gw000/debian-cuda

https://github.com/NVIDIA/nvidia-docker/issues/969
```

#### Command
```
docker build --build-arg UBUNTU_VERSION=18.04 \
             --build-arg CUDA=11.0 \
             --build-arg CUDNN=8 \
             -f Dockerfile -t docker.io/chongchuanbing/nvidia-cuda-runtime:11.0-cudnn8-py3.6-ubuntu18.04 .
docker push docker.io/chongchuanbing/nvidia-cuda-runtime:11.0-cudnn8-py3.6-ubuntu18.04


docker build --build-arg UBUNTU_VERSION=18.04 \
             --build-arg CUDA=10.0 \
             --build-arg CUDNN=7 \
             -f Dockerfile -t docker.io/chongchuanbing/nvidia-cuda-runtime:10.0-cudnn7-py3.6-ubuntu18.04 .
docker push docker.io/chongchuanbing/nvidia-cuda-runtime:10.0-cudnn7-py3.6-ubuntu18.04
```