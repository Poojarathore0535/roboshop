if [-z "${MYSQL_ROOT_PASSWORD}" -o -z "$1"]; then
   echo Input passowrd is missing
   exit
fi

if [-n "${MYSQL_ROOT_PASSWORD}"]; then
   passowrd=${MYSQL_ROOT_PASSWORD}
fi

if [-n "$1"]; then
   passowrd=$1
fi


dnf install mysql-server -y
systemctl enable mysqld
systemctl start mysqld  

mysql_secure_installation --set-root-pass ${MYSQL_ROOT_PASSWORD}