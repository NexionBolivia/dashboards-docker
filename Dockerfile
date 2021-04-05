FROM rocker/shiny

COPY ./scripts/install-packages.sh /srv/

RUN apt-get update --quiet=2 > /dev/null  & \
    apt-get install -y cron --quiet=2 > /dev/null & \
    apt-get install -y git

RUN chmod +x /srv/install-packages.sh & \
    bash /srv/install-packages.sh 

