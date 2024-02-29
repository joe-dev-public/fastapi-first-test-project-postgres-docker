# Remember: after changing this file, or init-user-db.sh, you'll need to re-build your image :¬)

# Creating this based on
# https://github.com/docker-library/docs/blob/master/postgres/README.md#initialization-scripts

FROM postgres

WORKDIR /docker-entrypoint-initdb.d/

COPY ./init-user-db.sh .


