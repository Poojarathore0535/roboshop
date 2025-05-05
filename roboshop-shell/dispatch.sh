component_name=payment
source common.sh

dnf install golang -y

cp dispatch.service /etc/systemd/system/dispatch.service

app_pre_setup

cd /app 
go mod init dispatch
go get 
go build

systemd_setup