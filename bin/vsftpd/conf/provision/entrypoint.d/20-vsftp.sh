#!/usr/bin/env bash

if ! id -u "$FTP_USER" > /dev/null 2>&1; then
    # Add group
    groupadd -g "$FTP_GID" "$FTP_USER"

    # Add user
    useradd -u "$FTP_UID" --create-home --shell /bin/bash --no-user-group "$FTP_USER"

    # Assign user to group
    usermod -g "$FTP_USER" "$FTP_USER"
fi

# Set passwords to "dev"
echo "$FTP_USER":"$FTP_PASSWORD" | chpasswd

useradd --create-home -d /storage/ftp/joomla01 --shell /bin/false --no-user-group joomla01
usermod -g "$FTP_USER" joomla01
echo "joomla1":"joomla1" | chpasswd

useradd --create-home -d /storage/ftp/joomla02 --shell /bin/false --no-user-group joomla02
usermod -g "$FTP_USER" joomla02
echo "joomla02":"joomla02" | chpasswd

useradd --create-home -d /storage/ftp/joomla03 --shell /bin/false --no-user-group joomla03
usermod -g "$FTP_USER" joomla03
echo "joomla03":"joomla03" | chpasswd

useradd --create-home -d /storage/ftp/joomla04 --shell /bin/false --no-user-group joomla04
usermod -g "$FTP_USER" joomla04
echo "joomla04":"joomla04" | chpasswd

useradd --create-home -d /storage/ftp/joomla05 --shell /bin/false --no-user-group joomla05
usermod -g "$FTP_USER" joomla05
echo "joomla05":"joomla05" | chpasswd

useradd --create-home -d /storage/ftp/joomla06 --shell /bin/false --no-user-group joomla06
usermod -g "$FTP_USER" joomla06
echo "joomla06":"joomla06" | chpasswd

useradd --create-home -d /storage/ftp/joomla07 --shell /bin/false --no-user-group joomla07
usermod -g "$FTP_USER" joomla07
echo "joomla07":"joomla07" | chpasswd

useradd --create-home -d /storage/ftp/joomla08 --shell /bin/false --no-user-group joomla08
usermod -g "$FTP_USER" joomla08
echo "joomla08":"joomla08" | chpasswd

useradd --create-home -d /storage/ftp/joomla09 --shell /bin/false --no-user-group joomla09
usermod -g "$FTP_USER" joomla09
echo "joomla09":"joomla09" | chpasswd

useradd --create-home -d /storage/ftp/joomla10 --shell /bin/false --no-user-group joomla10
usermod -g "$FTP_USER" joomla10
echo "joomla10":"joomla10" | chpasswd

useradd --create-home -d /storage/ftp/joomla11 --shell /bin/false --no-user-group joomla11
usermod -g "$FTP_USER" joomla11
echo "joomla11":"joomla11" | chpasswd

useradd --create-home -d /storage/ftp/joomla12 --shell /bin/false --no-user-group joomla12
usermod -g "$FTP_USER" joomla12
echo "joomla12":"joomla12" | chpasswd

useradd --create-home -d /storage/ftp/joomla13 --shell /bin/false --no-user-group joomla13
usermod -g "$FTP_USER" joomla13
echo "joomla13":"joomla13" | chpasswd

useradd --create-home -d /storage/ftp/joomla14 --shell /bin/false --no-user-group joomla14
usermod -g "$FTP_USER" joomla14
echo "joomla14":"joomla14" | chpasswd

useradd --create-home -d /storage/ftp/joomla15 --shell /bin/false --no-user-group joomla15
usermod -g "$FTP_USER" joomla15
echo "joomla15":"joomla15" | chpasswd

useradd --create-home -d /storage/ftp/joomla16 --shell /bin/false --no-user-group joomla16
usermod -g "$FTP_USER" joomla16
echo "joomla16":"joomla16" | chpasswd

chmod -R 777 dev /storage
