component_name=shipping
source common.sh
java

dnf install mysql -y 
mysql -h mysql-dev.rdevopsb82.store -uroot -pRoboShop@1 < /app/db/schema.sql
mysql -h mysql-dev.rdevopsb82.store -uroot -pRoboShop@1 < /app/db/app-user.sql 
mysql -h mysql-dev.rdevopsb82.store -uroot -pRoboShop@1 < /app/db/app-user.sql 
mysql -h mysql-dev.rdevopsb82.store -uroot -pRoboShop@1 < /app/db/master-data.sql
systemctl restart shipping

systemd_setup