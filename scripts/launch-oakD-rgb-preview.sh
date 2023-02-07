#!/bash
docker run --rm --privileged \
-v /dev/bus/usb:/dev/bus/usb --device-cgroup-rule='c 189:* rmw' \
-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
-v ../yolo2openvino:/opt/yolo2openvino \
-v $PWD:/opt/depthai-python \
--network=host luxonis/depthai-library:latest \
python3 /opt/depthai-python/examples/ColorCamera/rgb_preview.py