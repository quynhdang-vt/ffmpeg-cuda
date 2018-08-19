# ffmpeg-cuda

This builds a Docker image that can be used to run ffmpeg with hwaccel option using NVIDIA.  For more details, see this [link](https://developer.nvidia.com/ffmpeg).

For ffmpeg HWAccel see this [link](https://trac.ffmpeg.org/wiki/HWAccelIntro)

## Requirements for using the Docker image:

1. Ubuntu 16.04

2. NVIDIA supported GPU 

3. NVIDIA [CUDA toolkit](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#ubuntu-installation)
 installed on the host.

4. Install [NVIDIA Docker runtime](https://github.com/NVIDIA/nvidia-docker)

5. Set up Docker by modifying [/etc/docker/daemon.json](https://github.com/nvidia/nvidia-container-runtime#docker-engine-setup) with nvidia runtime. 



## Tidbits

Scaling explain (-vf) https://trac.ffmpeg.org/wiki/FilteringGuide
