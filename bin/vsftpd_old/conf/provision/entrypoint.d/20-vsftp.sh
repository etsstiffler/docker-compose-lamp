#!/usr/bin/env bash

if ! id -u "$FTP_USER" > /dev/null 2>&1; then
    # Add group
    groupadd -g "$FTP_GID" "$FTP_USER"

    # Add user
    useradd -u "$FTP_UID" --create-home -d "$FTP_PATH" --shell /bin/bash --no-user-group "$FTP_USER"

    # Assign user to group
    usermod -g "$FTP_USER" "$FTP_USER"
fi

# Set passwords to "dev"
echo "$FTP_USER":"$FTP_PASSWORD" | chpasswd

#useradd --create-home -d /storage/ftp/joomla1 --shell /bin/bash --no-user-group joomla1
#usermod -g "$FTP_USER" joomla1
#echo "joomla1":"joomla1" | chpasswd
#