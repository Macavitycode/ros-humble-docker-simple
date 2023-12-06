#!/bin/bash

./stop.sh

xhost +local:root
export DISPLAY=:1.0

docker run -t -d --privileged --net=host \
--name humble-simple \
-e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority:ro \
-v $PWD/source_this.sh:/root/source_this.sh \
-v $PWD/ws:/root/ws \
humble:gazebo-simple


# -v $PWD/code:/root/code \--env="DISPLAY" \
