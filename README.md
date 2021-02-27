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

## Stage 1 ► working local windows
libraries
1.- libfreenect https://github.com/OpenKinect/libfreenect2

To install libfreenect2 one option is install it with vcpkg: https://github.com/microsoft/vcpkg
"vcpkg search" or "vcpkg list" to see all packages supported.
Before install vcpkg, for visual studio should be installed "Desktop Development With C++" and languaje should be set to "English"

It seems fine once you get "Installing package libfreenect2[core,opengl]:x86-windows... done".

Testing the frame with ktb.



