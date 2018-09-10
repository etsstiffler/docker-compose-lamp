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

useradd --create-home -d /storage/ftp/joomla1 --shell /bin/false --no-user-group joomla1
usermod -g "$FTP_USER" joomla1
echo "joomla1":"joomla1" | chpasswd

useradd --create-home -d /storage/ftp/joomla2 --shell /bin/false --no-user-group joomla2
usermod -g "$FTP_USER" joomla2
echo "joomla2":"joomla2" | chpasswd

useradd --create-home -d /storage/ftp/joomla3 --shell /bin/false --no-user-group joomla3
usermod -g "$FTP_USER" joomla3
echo "joomla3":"joomla3" | chpasswd

useradd --create-home -d /storage/ftp/joomla4 --shell /bin/false --no-user-group joomla4
usermod -g "$FTP_USER" joomla4
echo "joomla4":"joomla4" | chpasswd

useradd --create-home -d /storage/ftp/joomla5 --shell /bin/false --no-user-group joomla5
usermod -g "$FTP_USER" joomla5
echo "joomla5":"joomla5" | chpasswd

useradd --create-home -d /storage/ftp/joomla6 --shell /bin/false --no-user-group joomla6
usermod -g "$FTP_USER" joomla6
echo "joomla6":"joomla6" | chpasswd

useradd --create-home -d /storage/ftp/joomla7 --shell /bin/false --no-user-group joomla7
usermod -g "$FTP_USER" joomla7
echo "joomla7":"joomla7" | chpasswd

useradd --create-home -d /storage/ftp/joomla8 --shell /bin/false --no-user-group joomla8
usermod -g "$FTP_USER" joomla8
echo "joomla8":"joomla8" | chpasswd

useradd --create-home -d /storage/ftp/joomla9 --shell /bin/false --no-user-group joomla9
usermod -g "$FTP_USER" joomla9
echo "joomla9":"joomla9" | chpasswd

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