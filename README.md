# docker-display-version
## Description
This docker image displays its own version and exits. Set the version during build time using `--build-arg VERSION` parameter.

This is a simple dockerfile for testing various updates for deployments:
1. deploy the image to some orchestrator
2. check image version running
3. update the image
4. update the deployment
5. check the image version running

## Usage

```
$ docker build . -t test-version:1
[+] Building 0.1s (5/5) FINISHED
tbatyrshin@MacBook-Pro-2|::test-versions (master %) $ docker build . -t test-version:2 --build-arg version=2
[+] Building 0.1s (5/5) FINISHED
tbatyrshin@MacBook-Pro-2|::test-versions (master %) $ docker build . -t test-version:3 --build-arg version=3
[+] Building 0.1s (5/5) FINISHED
$ docker run -it --rm test-version:1
1
$ docker run -it --rm test-version:2
2
$ docker run -it --rm test-version:3
3
```

## License and authors
* License:: MIT
* Author:: Timur Batyrshin <timurb@hey.com>
