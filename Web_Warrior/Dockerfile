FROM ubuntu

LABEL MAINTAINER="Ph055a"

RUN apt update; apt upgrade -y
RUN apt install -y \
git \
lynx \
httpie \
cewl \
curl \
jq \
wuzz \
whois \
nmap \
ruby-dev \
firefox \
build-essential \
patch \
ruby-dev \
zlib1g-dev \
liblzma-dev \
python-pip 

RUN pip install shodan

WORKDIR /home