# The goal is to build a little self driving car.

The current project is in the researching stage...

## Materials

1.- Powertrain (chassis): RC car.
2.- Brain: Nvidia Jetson TK1.
2.1- Hub USB.
3.- Batteries:
4.- Camera: Xbox Kinect 2.0
4.1- USB converter adapter.
5.- Memory card:
6.- Surface:


Resources:

A good presentation to understand how does it work.
https://roscon.ros.org/2019/talks/roscon2019_f110th.pdf

## Testing TK1

Getting started with NVIDIA Jetson TK1 ► https://developer.download.nvidia.com/embedded/jetson/TK1/docs/2_GetStart/Jeston_TK1_User_Guide.pdf
Jetson TK1 Development Pack 1.2 ► https://developer.nvidia.com/jetson-tk1-development-pack-1_2

After making many tests, Jetson TK1 will not be the board for this project because is very old and is not supported any more by NVIDIA, also many newest libraries are incompatible.

Working local with ROS following this tutorial to install: https://www.stereolabs.com/blog/ros-and-nvidia-jetson-xavier-nx/

## Stage 1 ► working local on ubuntu 20.04

Tutorial to install libfreenect2 

<a href = "https://www.notaboutmy.life/posts/run-kinect-2-on-ubuntu-20-lts/">Tutorial to install libfreenect2 </a>


(source .venv/bin/activate)

(A lot of issues due dependencies and libraries "Hell Matrix")

### Trying libfreenect2 on Docker

https://hub.docker.com/r/nucleardreamer/libfreenect2

* Install docker (working on ubuntu 20.04)


Learning python and docker 

https://www.youtube.com/watch?v=ZtHaaWvuZVg

docker run -p 8888:8888 -v ${PWD}/workspace/ipynbs:/ipynbs jupyter jupyter notebook --allow-root --no-browser --ip=0.0.0.0


<a href = "https://ngc.nvidia.com/catalog/containers?orderBy=modifiedDESC&pageNumber=1&query=&quickFilter=&filters=">nvidia containers </a>