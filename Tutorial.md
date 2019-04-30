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

- The nvidia-docker will connect automatially between container and GPU resource. If you don't need the GPU resource, then you can run using only docker. 
- NV_GPU is used as CUDA_VISIBLE_DEVICES
- --rm : automatically remove the container when it exits
- -v : Bind mount a volume. As I mention on example, you can mout internal folder of container and external folder such like folder of your worker node
- -ti : You should mention explicitly the docker image that is virtual environment (ex. -ti image_name:tag)
- If you want to execute virtual environment with kernel, then you just execute /bin/bash. However, you will almost execute the experiment code such like python test.py instead of /bin/bash

4. Useful command for docker
-  attach      Attach local standard input, output, and error streams to a running container
-  build       Build an image from a Dockerfile
-  commit      Create a new image from a container's changes
-  cp          Copy files/folders between a container and the local filesystem
-  create      Create a new container
-  diff        Inspect changes to files or directories on a container's filesystem
-  events      Get real time events from the server
-  exec        Run a command in a running container
-  export      Export a container's filesystem as a tar archive
-  history     Show the history of an image
-  images      List images
-  import      Import the contents from a tarball to create a filesystem image
-  info        Display system-wide information
-  inspect     Return low-level information on Docker objects
-  kill        Kill one or more running containers
-  load        Load an image from a tar archive or STDIN
-  login       Log in to a Docker registry
-  logout      Log out from a Docker registry
-  logs        Fetch the logs of a container
-  pause       Pause all processes within one or more containers
-  port        List port mappings or a specific mapping for the container
-  ps          List containers
-  pull        Pull an image or a repository from a registry
-  push        Push an image or a repository to a registry
-  rename      Rename a container
-  restart     Restart one or more containers
-  rm          Remove one or more containers
-  rmi         Remove one or more images
-  run         Run a command in a new container
-  save        Save one or more images to a tar archive (streamed to STDOUT by default)
-  search      Search the Docker Hub for images
-  start       Start one or more stopped containers
-  stats       Display a live stream of container(s) resource usage statistics
-  stop        Stop one or more running containers
-  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
-  top         Display the running processes of a container
-  unpause     Unpause all processes within one or more containers
-  update      Update configuration of one or more containers
-  version     Show the Docker version information
-  wait        Block until one or more containers stop, then print their exit codes

Ex 1) docker ps -a : Show the list of all containers

Ex 2) 
