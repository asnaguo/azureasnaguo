FROM quay.io/rizoa/alpine-mongodb-backup 

RUN apk add curl

WORKDIR /home

# COPY conf/nginx /etc/nginx
# COPY conf/redis.conf /etc/redis.conf
# COPY conf/supervisord /etc/supervisord
COPY ./app/rclone.conf /root/.config/rclone/rclone.conf
COPY ./app/run.sh /home/run.sh

CMD bash /home/run.sh
