#!/bin/bash

BUILD_NAME=@project.artifactId@-@project.version@
APP_PID=$(pgrep -f "$BUILD_NAME")

if [ ! -z "$APP_PID"]
then
  echo "Found pid $APP_PID"
  echo "Application is already running"
  exit
fi

nohup java -jar ./$BUILD_NAME.jar &
