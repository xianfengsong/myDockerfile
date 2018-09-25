#!/bin/bash
echo "STOP SLAVE;" | "${mysql[@]}";
echo "CHANGE MASTER TO master_host='$MYSQL_MASTER_SERVICE_HOST',  master_user='repl', master_password='repl' ;" | "${mysql[@]}";
echo "START SLAVE;" | "${mysql[@]}";
