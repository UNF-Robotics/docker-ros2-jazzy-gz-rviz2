FROM unfrobotics/docker-ros2-jazzy:latest

# update base system
RUN apt-get update && apt-get upgrade -y --no-install-recommends

# install gazebo & rviz2 packages
RUN apt-get install -y --no-install-recommends \
	nano \
	psmisc \
	qt5ct \
	ros-jazzy-gz-ros2-control \
	ros-jazzy-image-geometry \
	ros-jazzy-nav2-bringup \
	ros-jazzy-nav2-rviz-plugins \
	ros-jazzy-ros-gz-bridge \
	ros-jazzy-ros-gz-image \
	ros-jazzy-ros-gz-sim \
	ros-jazzy-ros2controlcli \
	ros-jazzy-rqt-graph \
	ros-jazzy-rqt-image-view \
	ros-jazzy-rviz2 \
	&& rm -rf /var/lib/apt/lists/*

#	ros-jazzy-grid-map-rviz-plugin \

# common commands added to history
RUN echo "ros2 launch nav2_bringup navigation_launch.py use_sim_time:=true" \
	>> /root/.bash_history
