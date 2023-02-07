# DepthAI Python Package

## Setup
In this repository, we use docker for OAK-D camera. 

### 1 Create workspace 

        mkdir ~/yolo_oakD
        cd ~/yolo_oakD
        git clone git@github.com:jnskkmhr/depthai-python.git
        git clone git@github.com:jnskkmhr/yolo2openvino.git

### 2 Pull docker image

        bash pull-oakD-image.sh

### 3 Run docker container and start yolov4 rgb detection
This section assumes you already have Myriad-X blob file in ~/yolo_oakD/yolo2openvino/MyriadX. 

        bash launch-oakD-yolov4.sh