#!/bin/bash

helm package --version "$TAG" charts/helm-test
mv "helm-test-$TAG.tgz" docs/
helm repo index docs --url https://cedriclam.github.io/helm-test/
git add --all .
git commit -am "release $TAG"
git tag -f $TAG
git push -f --tags origin master
