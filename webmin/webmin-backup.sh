#!/bin/bash
# Script Name: AtoMiC Webmin Settings Backup Script
# Author: htpcBeginner
# Publisher: http://www.htpcBeginner.com
# License: MIT License (refer to README.md for more details)
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.

if [[ $ISSETUP != "Yes" ]]
then
  echo
  echo -e '\e[91mCannot be run directly. Please run setup.sh from AtoMiC ToolKit root folder: \033[0msudo bash setup.sh'
  echo
  exit 0
fi
source $SCRIPTPATH/inc/commons.sh
source $SCRIPTPATH/inc/header.sh

source $SCRIPTPATH/webmin/webmin-constants.sh

echo -e $GREEN'AtoMiC '$APPTITLE' Backup Script'$ENDCOLOR

source $SCRIPTPATH/inc/pause.sh

source $SCRIPTPATH/inc/app-folder-check.sh
source $SCRIPTPATH/inc/app-backup-list.sh
source $SCRIPTPATH/inc/app-backup.sh
source $SCRIPTPATH/inc/app-backup-confirmation.sh
source $SCRIPTPATH/inc/thankyou.sh
source $SCRIPTPATH/inc/exit.sh