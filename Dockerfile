FROM ubuntu

ARG VERSION=1
ENV VERSION=$VERSION

CMD while true; do echo $VERSION; sleep 1; done
