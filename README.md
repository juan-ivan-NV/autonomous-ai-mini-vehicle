# The goal is to build a little self driving car.

The current project is in the researching stage...

## Materials

1.- Nvidia Jetson Nano developer board
2.- Jetson Nano Adapter for the chassis
3.- PCA9685 servo driver board
3.- Camera Module (Sony IMX219)
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

* To use docker with donkey simulator run the <code>donkey_sim.exe</code> app then access any car container, for example <code>Docker exec -it donkeycar1 bash</code> and finally run manage.py <code>python manage.py drive</code>

3.- Install Software On Donkeycar in this case the <a href = "https://docs.donkeycar.com/guide/robot_sbc/setup_jetson_nano/">Jetson Nano</a>

4.- Just clone the repo <a href = "https://github.com/autorope/donkeycar">Donkeycar Python Code</a>

5.- <a href = "https://docs.donkeycar.com/guide/create_application/">Create your car application</a>

* Steps:

    Configure Options

        donkey createcar --path ~/mycar
        cd ~/mycar
        nano myconfig.py
        
        short:$ nano ~/mycar/myconfig.py

    Configure I2C PCA9685

        sudo usermod -aG i2c $USER
        sudo reboot
        sudo i2cdetect -r -y 1
        
    For the PCA9685 board set on myconfig.py

        PCA9685_I2C_BUSNUM = 1


## Training methods

* Supervised learning also referred to as behavioral cloning

### Train an autopilot with keras

To use <a href = "https://docs.donkeycar.com/guide/train_autopilot/">Keras</a>Keras to train a neural network to drive like you

### Commands

Docker container terminal: Docker exec -it donkeycar1 bash

# Failed attemts or issues


### Testing with a deprecated board (NVIDIA TK1)

<a href = "https://developer.download.nvidia.com/embedded/jetson/TK1/docs/2_GetStart/Jeston_TK1_User_Guide.pdf">Getting started with NVIDIA Jetson TK1 </a>

<a href = "https://developer.nvidia.com/jetson-tk1-development-pack-1_2">Jetson TK1 Development Pack 1.2</a>

After making many tests, Jetson TK1 will not be the board for this project because is very old and is not supported any more by NVIDIA, also many newest libraries are incompatible.

