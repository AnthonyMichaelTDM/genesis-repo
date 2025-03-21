#!/bin/bash
#set -e

cd $(pwd)

git pull

cd ./x86_64

./update_repo.sh

cd ../

./git-v1.sh

exit


