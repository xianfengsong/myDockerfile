FROM mysql:5.6
#测试自定义镜像
ENV MYSQL_DATABASE=shop\
    MYSQL_ROOT_PASSWORD=test
COPY master.sql /docker-entrypoint-initdb.d
RUN sed -i '/\[mysqld\]/a server-id=1\nlog-bin=mysql-bin' /etc/mysql/mysql.conf.d/mysqld.cnf
