#!/bin/sh
xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 4
xterm -e "roslaunch gmapping slam_gmapping.launch" &
sleep 4
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 4
xterm -e "rosrun wall_follower wall_follower" 


