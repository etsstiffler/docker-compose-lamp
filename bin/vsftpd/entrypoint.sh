#!/usr/bin/env bash

adduser joomla1 --ingroup dev --shell /bin/false --home /storage/ftp/joomla1  --gecos "" --disabled-password
echo joomla1:joomla1 | chpasswd
