FROM mysql:5.6
#测试自定义镜像 slave 
ENV MYSQL_DATABASE=shop\
    MYSQL_ROOT_PASSWORD=test
COPY slave.sh /docker-entrypoint-initdb.d
COPY slave.sql /docker-entrypoint-initdb.d
RUN RAND="$(date +%s | rev | cut -c 1-2)$(echo ${RANDOM})" && sed -i '/\[mysqld\]/a server-id='$RAND'\nlog-bin=mysql-bin\nslave-skip-errors=1062' /etc/mysql/mysql.conf.d/mysqld.cnf
