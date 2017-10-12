#!/bin/bash

helm package --version "$1" charts/helm-test
mv "helm-test-$1.tgz" docs/
helm repo index docs --url https://cedriclam.github.io/helm-test/
git add --all .
git commit -am "release $1"
git tag -f $1
git push  --tags origin master
