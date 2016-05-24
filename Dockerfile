FROM ubuntu:14.04

RUN apt-get -qq update && \
    apt-get -qq install \
    python python-dev python-pip binutils  \
  && pip install http-prompt \
  && rm -rf /var/cache/apt/*

  #&& pip install httpie \

ENV PATH $PATH:/usr/local/bin

ENTRYPOINT ["http-prompt"]
