FROM rocker/shiny

COPY ./scripts/install-packages.sh /srv/

RUN chmod +x /srv/install-packages.sh & \
    bash /srv/install-packages.sh 