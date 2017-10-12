#!/bin/bash

if [ -z "$1" ]; then
    echo "please provide the version as parameter: ./release.sh <version>\n"
    exit 1
fi

bash ../script/helm-release.sh $1

# Update CHANGELOG.md file

seq 4|gsed "4i\# Release $1"
seq 4|gsed "4i"

git commit -am "release $1"
git tag -f $1
#git push -f --tags origin master