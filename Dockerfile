FROM postgres:16

RUN apt-get install -y postgis postgresql-16-postgis-3 \
    && apt-get autoclean && apt-get clean && apt-get autoremove --purge && rm -rf /var/lib/apt/lists/*
