FROM pch18/baota:_base6.0
MAINTAINER hlsdk.com

RUN cd /www/server/panel \
    && bash ./install/install_soft.sh 0 install nginx 1.15 \
    && bash ./install/install_soft.sh 0 install php 7.3 \
    && bash ./install/install_soft.sh 0 install php 7.1 \
    && echo '["linuxsys", "nginx", "php-7.3", "php-7.1"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
