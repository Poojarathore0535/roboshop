component_name=catalogue
source common.sh

cp ${pwd}/mongo.repo /etc/yum.repos.d/mongo.repo

nodejs
systemd_setup

dnf install mongodb-mongosh -y
mongosh --host mongodb-dev.rdevopsb82.store </app/db/master-data.js
