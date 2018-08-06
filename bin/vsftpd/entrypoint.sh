#!/bin/sh

echo "/bin/false" > nano /etc/shells


adduser joomla1 --ingroup www-data --shell /bin/false --home /storage/ftp/joomla1 --no-create-home --gecos "" --disabled-password
echo joomla1:joomla1 | chpasswd

/etc/init.d/vsftpd restart