# helm-test
repository test for helm charts and github release

## how to deploy


## How to release

very simple:

```
$ ./scripts/release.sh <version>
```

behind the scene the script will:
- Release the helm chart
- Add new session title in the CHANGELOG.md file
- Commit all the generated file.
- The tag the commit and push it to github in order the call the generation of docker images and tar.gz publication.
