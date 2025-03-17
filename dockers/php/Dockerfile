FROM php:8.3

RUN apt update && apt install -y cron

# create default folder for scripts
RUN mkdir /scripts

# add crontab file
ADD proj-cron /etc/cron.d/proj-cron
RUN chmod 0644 /etc/cron.d/proj-cron
RUN /usr/bin/crontab /etc/cron.d/proj-cron

ADD start.sh /start.sh
RUN chmod 777 /start.sh

ENTRYPOINT ["./start.sh"]