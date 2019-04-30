# For docker image generation
1. First, you should write Dockerfile such like make file as follow:

`FROM tensorflow/tensorflow:latest-gpu-py3 # Base Operating System`

`RUN apt-get update                        # RUN is the bash command on Base OS `

`RUN pip install "any package"             # You can install any package on Base OS `

`ADD . /home/Alexandrite/                  # Add directory in home `

`WORKDIR /home/Alexandrite/                # Setting the work directory `

2. Generate the docker image using Dockerfile:

`


