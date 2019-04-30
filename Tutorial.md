# For docker image generation
1. First, you should write Dockerfile such like make file as follow:

'FROM tensorflow/tensorflow:latest-gpu-py3 # Base Operating System
RUN apt-get update                        # RUN is the bash command on Base OS
RUN apt-get install -y vim
RUN pip install --upgrade pip
RUN pip install hdf5storage
RUN pip install sklearn
RUN pip install scipy
ADD . /home/Alexandrite/                  # Add directory in home
WORKDIR /home/Alexandrite/                # Setting the work directory'

2. 

I think you should use an
`<addr>` element here instead.
