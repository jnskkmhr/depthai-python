#!/bash
docker run --rm --privileged \
-v /dev/bus/usb:/dev/bus/usb --device-cgroup-rule='c 189:* rmw' \
-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/yolo_oakD/yolo2openvino:/opt/yolo2openvino \
-v $PWD:/opt/depthai-python \
--network=host luxonis/depthai-library:latest \
python3 /opt/depthai-python/examples/Yolo/tiny_yolo.py \
/opt/yolo2openvino/MyriadX/yolov4_openvino_2021.4_6shave.blob 640 640