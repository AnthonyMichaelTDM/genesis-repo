#!/bin/bash
#set -e

cd $(pwd)

cd ./x86_64

./update_repo.sh

cd ../

./git-v1.sh

exit


