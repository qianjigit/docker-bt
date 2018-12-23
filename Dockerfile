FROM l2share/bt:init

RUN cd /home \
    && wget -O install.sh http://download.bt.cn/install/install.sh \
    && echo y | bash install.sh \
    && yum clean all

VOLUME ["/www","/www/wwwroot"]
