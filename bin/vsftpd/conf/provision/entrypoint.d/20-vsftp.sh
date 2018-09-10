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

useradd --create-home -d /storage/ftp/Joomla01 --shell /bin/bash --no-user-group Joomla01
usermod -g "$FTP_USER" Joomla01
echo "Joomla01":"Joomla01" | chpasswd

useradd --create-home -d /storage/ftp/Joomla02 --shell /bin/bash --no-user-group Joomla02
usermod -g "$FTP_USER" Joomla02
echo "Joomla02":"Joomla02" | chpasswd

useradd --create-home -d /storage/ftp/Joomla03 --shell /bin/bash --no-user-group Joomla03
usermod -g "$FTP_USER" Joomla03
echo "Joomla03":"Joomla03" | chpasswd

useradd --create-home -d /storage/ftp/Joomla04 --shell /bin/bash --no-user-group Joomla04
usermod -g "$FTP_USER" Joomla04
echo "Joomla04":"Joomla04" | chpasswd

useradd --create-home -d /storage/ftp/Joomla05 --shell /bin/bash --no-user-group Joomla05
usermod -g "$FTP_USER" Joomla05
echo "Joomla05":"Joomla05" | chpasswd

useradd --create-home -d /storage/ftp/Joomla06 --shell /bin/bash --no-user-group Joomla06
usermod -g "$FTP_USER" Joomla06
echo "Joomla06":"Joomla06" | chpasswd

useradd --create-home -d /storage/ftp/Joomla07 --shell /bin/bash --no-user-group Joomla07
usermod -g "$FTP_USER" Joomla07
echo "Joomla07":"Joomla07" | chpasswd

useradd --create-home -d /storage/ftp/Joomla08 --shell /bin/bash --no-user-group Joomla08
usermod -g "$FTP_USER" Joomla08
echo "Joomla08":"Joomla08" | chpasswd

useradd --create-home -d /storage/ftp/Joomla09 --shell /bin/bash --no-user-group Joomla09
usermod -g "$FTP_USER" Joomla09
echo "Joomla09":"Joomla09" | chpasswd

useradd --create-home -d /storage/ftp/Joomla10 --shell /bin/bash --no-user-group Joomla10
usermod -g "$FTP_USER" Joomla10
echo "Joomla10":"Joomla10" | chpasswd

useradd --create-home -d /storage/ftp/Joomla11 --shell /bin/bash --no-user-group Joomla11
usermod -g "$FTP_USER" Joomla11
echo "Joomla11":"Joomla11" | chpasswd

useradd --create-home -d /storage/ftp/Joomla12 --shell /bin/bash --no-user-group Joomla12
usermod -g "$FTP_USER" Joomla12
echo "Joomla12":"Joomla12" | chpasswd

useradd --create-home -d /storage/ftp/Joomla13 --shell /bin/bash --no-user-group Joomla13
usermod -g "$FTP_USER" Joomla13
echo "Joomla13":"Joomla13" | chpasswd

useradd --create-home -d /storage/ftp/Joomla14 --shell /bin/bash --no-user-group Joomla14
usermod -g "$FTP_USER" Joomla14
echo "Joomla14":"Joomla14" | chpasswd

useradd --create-home -d /storage/ftp/Joomla15 --shell /bin/bash --no-user-group Joomla15
usermod -g "$FTP_USER" Joomla15
echo "Joomla15":"Joomla15" | chpasswd

useradd --create-home -d /storage/ftp/Joomla16 --shell /bin/bash --no-user-group Joomla16
usermod -g "$FTP_USER" Joomla16
echo "Joomla16":"Joomla16" | chpasswd

chmod -R 777 dev /storage