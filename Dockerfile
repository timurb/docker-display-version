FROM ubuntu

ARG version=1
ENV version=${version}

CMD while true; do echo $version; sleep 1; done
