# The goal is to build a little self driving car.

The current project is in the researching stage...

## Materials

1.- Nvidia Jetson Nano developer board
2.- Jetson Nano Adapter for the chassis
3.- PCA9685 servo driver board
3.- Camera Module (Sony IMX219)
4.- WiFi Card
5.- Antenas

6.- Exceed magnet rc car chasis 1/16

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

    Configure the Sony IMX219 cam

    Calibrate the car

    Run
        cd ~/mycar
        python manage.py drive

        In donkeycar open a browser and: 127.0.0.1:8887/drive

        SSH in windows: open a browser and the go to http://192.168.2.103:8887/drive

# SSH to the donkey

First is important to locate your Pi on the network

<code>ifconfig wlan0</code> or <code>ip -br a</code> to know the ip address

turn off nano on ssh

<code>sudo power off</code>

Instructions from <a href = "https://docs.donkeycar.com/guide/robot_sbc/setup_raspberry_pi/#step-5-connecting-to-the-pi">donkey site</a>

Or install <a href = "https://www.putty.org/">putty (for windows)</a>

then open the 

## Controls

    * l = left
    * j = righ
    * i = forward

To use the <a href = "https://docs.donkeycar.com/parts/controllers/#joystick-controller">joystick</a> take this steps.

run the main program as
<code>python manage.py drive --js</code>

## Training methods

* Supervised learning also referred to as behavioral cloning

### Train an autopilot with keras

To use <a href = "https://docs.donkeycar.com/guide/train_autopilot/">Keras</a>Keras to train a neural network to drive like you

Examples:

<a href = "https://www.youtube.com/watch?v=4fXbDf_QWM4">Driving tips</a>

<a href = "https://www.youtube.com/watch?v=aLFuHGlU0CM">NN w behavioral inputs</a>

collect data

* restart python manage.py to create a new tub session. Press <code>Start Recording</code> if using web controller (The joystick will auto record with any non-zero throttle).

* In case of car crash press Stop Car to stop recording, in case of using joystick tap triangle to delete last 5 seconds of records.

* After collecting 10 to 20 laps of good data (5 to 20k images) stop the car with <code>Ctrl-c</code> in the ssh session.

* Data should be stored in the most recent tub folder.

#### Trainsfer the data from the car to the computer

Is recommended to transfer the data to a PC computer to train, this training can be done in the Nano but the process is quite slow.

In a new terminal session on your host PC use rsync to copy your cars folder from the dev board.

<code>rsync -rv --progress --partial pi@<your_pi_ip_address>:~/mycar/data/  ~/mycar/data/</code>

### Commands

Run the container
Docker container terminal: Docker exec -it donkeycar1 bash

For windows vmmem takes a lot of memory, so turn it of: $ wsl --shutdown

# Failed attemts or issues

### Testing with a deprecated board (NVIDIA TK1)

<a href = "https://developer.download.nvidia.com/embedded/jetson/TK1/docs/2_GetStart/Jeston_TK1_User_Guide.pdf">Getting started with NVIDIA Jetson TK1 </a>

<a href = "https://developer.nvidia.com/jetson-tk1-development-pack-1_2">Jetson TK1 Development Pack 1.2</a>

After making many tests, Jetson TK1 will not be the board for this project because is very old and is not supported any more by NVIDIA, also many newest libraries are incompatible.

### Hardware issues

Mistake at connecting the sombrero (PCA9685) board
Be sure to have te connection set up like this

<center>
<img src='https://docs.donkeycar.com/assets/Servo_Wiring.png' />
<figcaption>PCA9685 connections</figcaption></center>

    * Throttle channel 0
    donkey calibrate --channel 0 --bus=1
    * Steering channel 1
    donkey calibrate --channel 1 --bus=1

