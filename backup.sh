#!/bin/bash

PASSWORD=123
BACKUPNAME=backup.zip
BACKUPDSTLOC=/home/mj/Files
IPDST=root@10.58.5.26
BACKUPDST=/home/mj/backup/
zip -r --password $PASSWORD $BACKUPNAME $BACKUPDSTLOC

rsync -avze ssh $BACKUPNAME $IPDST:$BACKUPDST
