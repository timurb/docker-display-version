FROM ubuntu

ARG version
ENV version=${version:-1}

CMD while true; do echo $version; sleep 1; done
