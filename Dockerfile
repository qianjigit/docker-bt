FROM pch18/baota:_base6.0
MAINTAINER pch18.cn

RUN cd /www/server/panel \
    && bash ./install/install_soft.sh 1 install nginx 1.16 \
    && bash ./install/install_soft.sh 1 install mysql mariadb_10.1 \
    && bash ./install/install_soft.sh 1 install php 7.3 \
    && echo '["linuxsys", "nginx", "mysql", "php-7.3"]' > ./config/index.json

VOLUME ["/www","/www/wwwroot"]
