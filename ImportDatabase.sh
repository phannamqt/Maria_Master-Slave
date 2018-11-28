pkg1=$(rpm -qa| grep MariaDB-server)
if [[ "$pkg1" == *"MariaDB-server-10.1."*  ]];then
	 wget https://github.com/phannamqt/Maria_Master-Slave/blob/master/demosql.tar.gz -P /tmp/ && cd /tmp/ && tar zxvf demosql.tar.gz >/dev/null 2>&1
	 mysql -uroot -p demosql < /tmp/demosql.sql
	 rm -rf /tmp/demosql.*
	 echo "** DONE! **"
else
 	echo "There are something wrong with install MariaDB-Server, please try again!"
fi
