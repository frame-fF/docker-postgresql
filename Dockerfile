FROM postgres:17.4

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y postgis postgresql-17-postgis-3 \
    && apt-get autoclean && apt-get clean && apt-get autoremove --purge && rm -rf /var/lib/apt/lists/*
