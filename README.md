# The goal is to build a little self driving car.

The current project is in the researching stage...

## Materials

1.- Nvidia Jetson Nano developer board
2.- Jetson Nano Adapter
3.- Camera Module
4.- WiFi Card
5.- Antenas

6.- Exceed magnet rc car chasis

Resources:

A good presentation to understand how does it work.
https://roscon.ros.org/2019/talks/roscon2019_f110th.pdf


# Software set up

## Donkey car

<a href = "https://docs.donkeycar.com/">Donkey Car Home page </a>

1.- <a href = "https://docs.donkeycar.com/guide/install_software/#step-1-install-software-on-host-pc">Install Donkeycar</a> on Windows or Linux

    * This can be done step by step

    * Or with <a href = "https://medium.com/robocar-store/how-to-install-a-virtual-donkey-car-on-your-pc-using-docker-9e4e4fcf718a">docker</a>

2.- Install Donkey Simulator for <a href = "https://youtu.be/J6Ll5Obtuxk">linux</a> or <a href = "https://youtu.be/wqQMmHVT8qw">windows</a>

    * "To use docker with donkey simulator run the" <code>donkey_sim.exe</code> "app then access a car container" <code>Docker exec -it donkeycar1 bash<code> "and finally run manage.py" <code>python manage.py drive</code>




### Commands

Docker container terminal: Docker exec -it donkeycar1 bash

# Failed attemts or issues


### Testing with a deprecated board (NVIDIA TK1)

<a href = "https://developer.download.nvidia.com/embedded/jetson/TK1/docs/2_GetStart/Jeston_TK1_User_Guide.pdf">Getting started with NVIDIA Jetson TK1 </a>

<a href = "https://developer.nvidia.com/jetson-tk1-development-pack-1_2">Jetson TK1 Development Pack 1.2</a>

After making many tests, Jetson TK1 will not be the board for this project because is very old and is not supported any more by NVIDIA, also many newest libraries are incompatible.

