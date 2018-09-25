FROM mongo:3.2.13
ENV MONGO_INITDB_ROOT_USERNAME admin
ENV MONGO_INITDB_ROOT_PASSWORD test
copy mongodb.dump mongodb.dump
copy init.sh /docker-entrypoint-initdb.d/
copy init.js /docker-entrypoint-initdb.d/
copy mongodb.conf mongodb.conf
#CMD ["mongod","--config","mongodb.conf"]
