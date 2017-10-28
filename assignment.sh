#/bin/bash
#
#
##Web server for Wordpress setup
#
#Colors for output
red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
reset=$(tput sgr0)
#
#To check packages are installed, if not then install packages
echo "________________________________________"
echo "Checking php, mysql & httpd packages are installed or not: "
echo "________________________________________"
echo "Checking/Setting up repo for mysql-server"
if [ -e /etc/yum.repos.d/mysql-community.repo ];
then
echo "$green Repo for mysql-server has already been configured, proceeding... $reset"
else
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
echo "________________________________________"
echo "Repo for Mysql-server has been configured"
fi
echo "________________________________________"
rpm -qa | egrep 'php|mysql-server|httpd' -i
if [ $? -eq 0 ]; then
echo "________________________________________"
	echo "$green Packages are already installed, no further installation needed, proceeding... $reset"
echo "________________________________________"
else
#read -p "$blue Installing php, mysql & httpd packages, you want to proceed : [default is y] = $reset" choice
#	if [ "$choice" == "y" -o "$choice" == "Y" -o "$choice" == "Yes" -o "$choice" == "yes" -o "$choice" == "" ]; then
		 yum install php mysql httpd -y
		sleep 2
echo "________________________________________"
		echo "$green Packages has been installed successfully $reset"
echo "________________________________________"
		sleep 2
#	else
#		 echo "$red Enter appropriate choice (y/n), Exiting...$reset"
	fi
#fi

sleep 1


## Asking Domain name to user and adding into /etc/hosts file
#
#
ip=$(ifconfig | grep ens -A1 | grep inet | tr -s " " | cut -f3 -d" ")
echo "________________________________________"
read -p "Enter your domain name : [default is "example.com"] = " domain
echo "________________________________________"

if [ -z "$domain" ]; then
	echo "$ip	example.com" >> /etc/hosts
else
	echo "$ip	$domain" >> /etc/hosts
fi
echo "________________________________________"
echo "$green host entry has been added : $reset"; tail -n1 /etc/hosts

echo "________________________________________"
#
## Creating Virtual host file
#

echo "$green##### Creating virtual host file #####$reset"
echo "________________________________________"

