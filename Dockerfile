FROM l2share/bt:init

RUN cd /home \
    && wget -O crack_bt_panel_pro.sh https://raw.githubusercontent.com/leitbogioro/Crack_BT_Panel/master/crack_bt_panel_pro.sh \
    && echo y | bash crack_bt_panel_pro.sh \

VOLUME ["/www","/www/wwwroot"]
