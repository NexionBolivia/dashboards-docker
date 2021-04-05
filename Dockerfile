FROM rocker/shiny

COPY ./scripts/install-packages.sh /srv/

RUN apt update
RUN apt install -y git & \
     apt install -y cron

RUN apt install -y vim
     
# RUN chmod +x /srv/install-packages.sh & \
#     bash /srv/install-packages.sh 