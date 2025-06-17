FROM postgres:17.5

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y postgis postgresql-17-postgis-3 \
    && apt-get autoclean && apt-get clean && apt-get autoremove --purge && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y gnupg curl \
    && curl -s https://packagecloud.io/install/repositories/timescale/timescaledb/script.deb.sh | bash \
    && apt-get install -y timescaledb-2-postgresql-17 \
    && apt-get autoclean && apt-get clean && apt-get autoremove --purge && rm -rf /var/lib/apt/lists/*
