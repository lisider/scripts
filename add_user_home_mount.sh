#########################################################################
# File Name: add.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Wed 04 Jul 2018 06:14:53 PM CST
# Version : 1.0
#########################################################################
#!/bin/bash
USER_TO_ADD=$1

sudo useradd ${USER_TO_ADD}  -s /bin/bash   -G sudo

sudo mkdir /home/${USER_TO_ADD}

sudo chown ${USER_TO_ADD}:${USER_TO_ADD} /home/${USER_TO_ADD}

sudo usermod -d /home/${USER_TO_ADD} ${USER_TO_ADD}

sudo mount -t cifs //SH-SUWEISHUAI/Share /home/${USER_TO_ADD}   -o username=suweishuai,password=1234Weishuai,ip=172.17.140.75,gid=`id -g ${USER_TO_ADD}`,uid=`id -u ${USER_TO_ADD}`

sudo passwd ${USER_TO_ADD} 
