FROM tensorflow/tensorflow:latest-gpu-py3
RUN apt-get update
RUN apt-get install -y vim
RUN pip install --upgrade pip
RUN pip install hdf5storage
RUN pip install sklearn
RUN pip install scipy
ADD . /home/Alexandrite/
WORKDIR /home/Alexandrite/
