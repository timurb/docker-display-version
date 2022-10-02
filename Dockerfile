FROM ubuntu

ARG version
ENV version=${version:-1}

CMD echo $version
