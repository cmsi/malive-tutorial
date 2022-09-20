FROM debian:11
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get -y install build-essential wget ruby-dev rubygems && \
  gem install github-markdown
