# For docker image generation
1. First, you should write Dockerfile such like make file as follow:

`FROM tensorflow/tensorflow:latest-gpu-py3 # Base Operating System`

`RUN apt-get update                        # RUN is the bash command on Base OS `

`RUN pip install "any package"             # You can install any package on Base OS `

`ADD . /home/Alexandrite/                  # Add directory in home `

`WORKDIR /home/Alexandrite/                # Setting the work directory `

2. Generate the docker image using Dockerfile:

Ex) `docker build -t test . `  # test is name of the docker image

# Make container to execute your experiment:

Ex) `NV_GPU=0 nvidia-docker run --rm -v /home/Alexandrite:/home/Alexandrite -ti tensorflow/tensorflow:latest-gpu-py3 /bin/bash`

- The nvidia-docker will be connected between container and GPU source. If you don't need the GPU source, then you can run using docker. 
- NV_GPU is used as CUDA_VISIBLE_DEVICES
- --rm : automatically remove the container when it exits
- -v : Bind mount a volume. As I mention on example, you can mout internal folder of container and external folder such like folder of your worker node
- -ti : 

4. Useful command
- To check 
