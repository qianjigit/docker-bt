FROM l2share/bt:init

RUN cd /home \
    && wget -O install.sh http://download.bt.cn/install/install.sh \
    && echo y | bash install.sh \
    && bash /www/server/panel/install/install_soft.sh 1 install nginx 1.12 \
    && bash /www/server/panel/install/install_soft.sh 1 install mysql mariadb_10.1 \
    && bash /www/server/panel/install/install_soft.sh 1 install php 7.1 \
    && yum clean all

VOLUME ["/www","/www/wwwroot"]
