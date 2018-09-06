FROM mysql:5.6
#测试自定义镜像
ENV MYSQL_DATABASE=shop\
    MYSQL_ROOT_PASSWORD=test
ADD shop.sql /docker-entrypoint-initdb.d

