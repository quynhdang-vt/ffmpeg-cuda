
IMAGE_NAME=ffmpeg-cuda:latest

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .


.PHONY: run
run:
	docker run --runtime=nvidia -e NVIDIA_DRIVER_CAPABILITIES=all -it --rm --entrypoint=bash -v /home/qdang/testdata:/testdata $(IMAGE_NAME)


