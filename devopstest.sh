#!/bin/bash
cd devopsshared
mkdir devopsshared_backup/tempdir
for i in $(seq 1 9)
do
zip devopsshared_backup/tempdir/backup_0${i}.zip devopsshared_0${i}/devopsshared_0${i}_file{1,3,5}.txt
done
cd devopsshared_backup
zip devopsshared_backup_$(date +%Y%m%d_%H%M%S).zip tempdir/backup_*
rm -rf tempdir
cd ..
cd .
