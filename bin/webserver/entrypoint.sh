echo "/bin/false" > nano /etc/shells


adduser joomla1 --ingroup www-data --shell /bin/false --home /var/www --no-create-home --gecos "" --disable-password
echo joomla1:joomla1 | chpasswd



chown root:root /etc/vsftpd.conf
/etc/init.d/vsftpd restart