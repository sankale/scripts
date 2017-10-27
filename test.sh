#!/bin/bash
if [ -f /var/www/html/index.html ]; then
echo "testing scripted httpd configuration" >> /var/www/html/index.html
else
touch /var/www/html/index.html
echo "testing scripted httpd configuration" >> /var/www/html/index.html
fi
docroot='/var/www/html'
echo "<VirtualHost *80>
    ServerAdmin root@$HOSTNAME
    DocumentRoot "\"$docroot\""
    ServerName $HOSTNAME
</VirtualHost>" > /etc/httpd/conf.d/test.conf
echo "<Directory $docroot>
    Allow Override none
    Allow from all
</Directory>" >> /etc/httpd/conf.d/test.conf
systemctl start httpd
curl http://$HOSTNAME
