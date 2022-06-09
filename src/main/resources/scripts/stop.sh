#!/bin/bash

BUILD_NAME=@project.artifactId@-@project.version@
APP_PID=$(pgrep -f "$BUILD_NAME")

while kill $APP_PID; do
    sleep 1
done

echo 'Done.'