FROM nvcr.io/nvidia/cuda:9.0-cudnn7.1-devel-ubuntu16.04
RUN apt-get update && apt-get install -y nasm pkgconf

RUN git clone https://github.com/FFmpeg/FFmpeg /root/ffmpeg 
WORKDIR /root/ffmpeg

RUN git clone https://git.videolan.org/git/ffmpeg/nv-codec-headers.git && cd nv-codec-headers && make && make install

ENV PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
RUN ./configure --enable-nonfree --disable-shared --enable-nvenc --enable-cuda --enable-cuvid --enable-libnpp --extra-cflags=-I/usr/local/cuda/include --extra-cflags=-I/usr/local/include --extra-ldflags=-L/usr/local/cuda/lib64 
RUN make -j 10

