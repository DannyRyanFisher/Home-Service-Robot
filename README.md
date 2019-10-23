# Home-Service-Robot-Project
Using the Turtlebot in Gazebo to pick up a random object and place it in another random location autonomously.

![All launch files running](/photos/H-S.png)
*Image 1: Output from home_service file*

# Description

By running the main script file (in the section below) a sequence of launch files are run in xterm shells (terminals) which shows a Turtlebot robot moving to one location (where an item appears) and moving from this location to a second random location. Once this location is reached, the object appears again (simulating dropping the item off).

## Before you run the code

### Install ROS (skip this step if ROS is already installed)

(I am using Ubuntu 16.04 with the ROS Kinetic version below)

    sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 && sudo apt-get update && sudo apt-get install ros-kinetic-desktop-full && sudo rosdep init && rosdep update && echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc && source ~/.bashrc

### Install Dependencies

    sudo apt-get install xterm

### Then download this repository

    git clone https://github.com/DannyRyanFisher/Home-Service-Robot

    mv Home-Service-Robot/ ~/catkin_ws/src/

    cd ~/catkin_ws && catkin_make

### Give teleop script permission to be executable

    chmod u+x ~/catkin_ws/src/Home-Service-Robot/shellScripts/home_service.sh

## Running the code

    source ~/catkin_ws/devel/setup.bash

    cd ~/catkin_ws/src/Home-Service-Robot/shellScripts
    ./home_service.sh

This then enables the following setup (Image 1).



