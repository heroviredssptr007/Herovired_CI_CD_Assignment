#!/bin/bash
python3 latest_commit.py
reference_commit=$(cat latest_commit_backup.txt)
latest_commit_a=$(cat latest_commit.txt)
if [ "$reference_commit" == "$latest_commit_a" ]
then
echo "Commits are matching"
exit 0
else
cat latest_commit.txt > latest_commit_backup.txt
fi