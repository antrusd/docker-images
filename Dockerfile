FROM alpine

MAINTAINER Anthony Rusdi (root@antrusd.me)

RUN apk --no-cache add busybox-extras \
                       openssh-client \
                       netcat-openbsd \
                        tcptraceroute \
                           bind-tools \
                           util-linux \
                            net-tools \
                             iproute2 \
                              tcpdump \
                              iputils \
                              ethtool \
                              sysstat \
                               procps \
                               iperf3 \
                               screen \
                               strace \
                               ltrace \
                                rsync \
                                whois \
                                socat \
                                ngrep \
                                 curl \
                                 lsof \
                                 nmap \
                                 bash \
                                  mtr \
                                  wrk \
                                   jq

CMD ["bash", "-l", "-i"]
