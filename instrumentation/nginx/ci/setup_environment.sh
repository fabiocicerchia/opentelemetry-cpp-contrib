#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
export TZ="Europe/London"

wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && dpkg -i erlang-solutions_2.0_all.deb
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
apt-get install --no-install-recommends --no-install-suggests -y \
  apt-transport-https ca-certificates curl gnupg-agent software-properties-common \
  python3 elixir erlang-syntax-tools docker-ce docker-ce-cli containerd.io erlang-dev docker-compose

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
