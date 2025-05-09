#!/bin/bash
cat latest_commit.txt > latest_commit_backup.txt
python3 latest_commit.py
reference_commit=$(cat latest_commit_backup.txt)
latest_commit_a=$(cat latest_commit.txt)
if [ "$reference_commit" == "$latest_commit_a" ]
then
echo "Commits are matching"
exit 0
else
	cd /var/www/html/Herovired_CI_CD_Assignment/
	git pull
fi
