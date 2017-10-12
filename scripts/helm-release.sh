#!/bin/bash

if [ -z "$1" ]; then
    echo "please provide the version as parameter: ./helm-release.sh <version>\n"
    exit 1
fi

helm package --version "$1" charts/helm-test
mv "helm-test-$1.tgz" docs/
helm repo index docs --url https://cedriclam.github.io/helm-test/
git add --all docs/

