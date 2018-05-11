readit
git clone https://github.com/aljamima/phpSqlMonitoring
cd phpSqlMonitoring
sudo apt install mysql-server apache2 php php-mysql php-mysqli phpmyadmin

run mysql_secure_installation # probably as sudo
mysql -u root -p   # to login to sql console
mysql>create database jquery_crud; # then hit enter
exit
$>mysql -u root -p jquery_crud < jquery_crud.sql   # this inserts our tables into the jquery database
should now be ready to copy all files into 
sudo cp -r * /var/www/html
sudo service apache2 restart
and set your browser to view 'localhost'

