mkdir /etc/vsftpd
htpasswd -cd /etc/vsftpd/ftpd.passwd Joomla_01 Joomla_01
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_02 Joomla_02
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_03 Joomla_03
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_04 Joomla_04
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_05 Joomla_05
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_06 Joomla_06
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_07 Joomla_07
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_08 Joomla_08
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_09 Joomla_09
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_10 Joomla_10
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_11 Joomla_11
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_12 Joomla_12
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_13 Joomla_13
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_14 Joomla_14
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_15 Joomla_15
htpasswd -d /etc/vsftpd/ftpd.passwd Joomla_16 Joomla_16

useradd --home /home/vsftpd --gid nogroup -m --shell /bin/false vsftpd

echo "local_root=/var/www/Joomla_01" > ~/etc/vsftpd_user_conf/Joomla_01
echo "local_root=/var/www/Joomla_02" > ~/etc/vsftpd_user_conf/Joomla_02
echo "local_root=/var/www/Joomla_03" > ~/etc/vsftpd_user_conf/Joomla_03
echo "local_root=/var/www/Joomla_04" > ~/etc/vsftpd_user_conf/Joomla_04
echo "local_root=/var/www/Joomla_05" > ~/etc/vsftpd_user_conf/Joomla_05
echo "local_root=/var/www/Joomla_06" > ~/etc/vsftpd_user_conf/Joomla_06
echo "local_root=/var/www/Joomla_07" > ~/etc/vsftpd_user_conf/Joomla_07
echo "local_root=/var/www/Joomla_08" > ~/etc/vsftpd_user_conf/Joomla_08
echo "local_root=/var/www/Joomla_09" > ~/etc/vsftpd_user_conf/Joomla_09
echo "local_root=/var/www/Joomla_10" > ~/etc/vsftpd_user_conf/Joomla_10
echo "local_root=/var/www/Joomla_11" > ~/etc/vsftpd_user_conf/Joomla_11
echo "local_root=/var/www/Joomla_12" > ~/etc/vsftpd_user_conf/Joomla_12
echo "local_root=/var/www/Joomla_13" > ~/etc/vsftpd_user_conf/Joomla_13
echo "local_root=/var/www/Joomla_14" > ~/etc/vsftpd_user_conf/Joomla_14
echo "local_root=/var/www/Joomla_15" > ~/etc/vsftpd_user_conf/Joomla_15
echo "local_root=/var/www/Joomla_16" > ~/etc/vsftpd_user_conf/Joomla_16


mkdir /etc/vsftpd_user_conf