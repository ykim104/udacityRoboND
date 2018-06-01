#! /bin/sh

xterm -e " export TURTLEBOT_GAZEBO_WORLD_FILE=~/catkin_ws/src/World/MyWorld; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e " export TURTLEBOT_GAZEBO_MAP_FILE=~/catkin_ws/src/World/myMap.yaml; roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 5
xterm -e " rosrun rviz rviz -d ~/catkin_ws/src/RvizConfig/home_service.rviz" &
sleep 5
xterm -e " source ~/catkin_ws/devel/setup.bash; rosrun pick_objects pick_objects_node" &
sleep 5
xterm -e " source ~/catkin_ws/devel/setup.bash; rosrun add_markers add_markers_node"

