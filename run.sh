docker run -it --rm \
    -u $(id -u):$(id -g) \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v $ROBO_BOTS:/robocode/robots/robots \
    -v $ROBO_CONF:/robocode/config \
    -e DISPLAY \
    robocode


docker build -t robocode .
