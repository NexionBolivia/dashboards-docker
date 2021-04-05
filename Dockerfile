FROM rocker/shiny

COPY ./scripts/install-packages.sh /srv/

RUN chmod +x /srv/install-packages.sh & \
    bash /srv/install-packages.sh 

RUN apt-get update --quiet=2 > /dev/null  & \
    apt-get install -y cron --quiet=2 > /dev/null &\
    apt-get install -y git