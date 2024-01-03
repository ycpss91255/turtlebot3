#!/usr/bin/env bash

# ${1}: USER
# ${2}: GROUP

# Write Hello and alias to bashrc
cat << 'EOF' >> /home/"${1}"/.bashrc

source /opt/ros/noetic/setup.bash

export ROS_MASTER_URI=http://127.0.0.1:11311
export ROS_HSTNAME=127.0.0.1

# 2D LiDAR
export LDS_MODEL=LDS-01

# OpenCR
export OPENCR_PORT=/dev/ttyACM0
export OPENCR_MODEL=burger_noetic

EOF
