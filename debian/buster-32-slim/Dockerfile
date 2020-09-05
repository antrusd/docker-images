FROM i386/debian:buster-slim

RUN  : > /etc/apt/sources.list; \
     echo "deb http://repo.antrusd.me/debian buster main" >> /etc/apt/sources.list; \
     echo "deb http://repo.antrusd.me/debian buster/updates main" >> /etc/apt/sources.list; \
     echo "deb http://repo.antrusd.me/debian buster-updates main" >> /etc/apt/sources.list; \
     sed -i '1 a \\ncd ${HOME}' /etc/bash.bashrc; \
     apt update; \
     apt install readline-common -y; \
     rm -fr /var/cache/apt/archives/* /var/lib/apt/lists/* /var/log/apt/* /var/log/dpkg.log

