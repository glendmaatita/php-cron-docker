FROM php:7.1

RUN apt-get update && apt-get install -y cron

# create default folder for scripts
RUN mkdir /scripts

# create cron log
RUN touch /var/log/cron.log

# add crontab file
ADD proj-cron /etc/cron.d/proj-cron
RUN chmod 0644 /etc/cron.d/proj-cron
RUN /usr/bin/crontab /etc/cron.d/proj-cron

ADD start.sh /start.sh
RUN chmod 777 /start.sh

ENTRYPOINT ["./start.sh"]