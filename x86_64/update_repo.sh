#!/bin/bash

rm genesis-repo*

echo "repo-add"
repo-add -n -R 'genesis-repo.db.tar.gz' *.pkg.tar.zst
sleep 4

# remove the symlinks and rename the files they pointed to
# so that pacman can get the database from github
rm genesis-repo.db genesis-repo.files
sleep 1
mv -Tf genesis-repo.db.tar.gz genesis-repo.db
mv -Tf genesis-repo.files.tar.gz genesis-repo.files

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
