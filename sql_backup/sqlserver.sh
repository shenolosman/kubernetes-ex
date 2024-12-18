#!/bin/sh -xe



FILENAME=$(date "+%Y-%m-%d-%H-%M-%S")

#sqlcmd -S ${sql_host} -U ${sql_user} -P ${sql_password} -Q "BACKUP DATABASE ${sql_database} TO DISK='/var/opt/mssql/data/${sql_database}$FILENAME'"
mysqldump -h ${sql_host}   -u${sql_user} -p${sql_password} ${sql_database} --flush-logs --master-data=2 --delete-master-logs | gzip >  /opt/${sql_database}$FILENAME.sql.gz


# ta /opt/${sql_database}$FILENAME.sql.gz och skicka til S3