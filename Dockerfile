FROM alpine

MAINTAINER Anthony Rusdi (root@antrusd.me)

RUN apk --no-cache add busybox-extras \
                       openssh-client \
                       netcat-openbsd \
                        tcptraceroute \
                           bind-tools \
                            net-tools \
                             iproute2 \
                              tcpdump \
                              iputils \
                              ethtool \
                               procps \
                               iperf3 \
                                rsync \
                                whois \
                                socat \
                                 curl \
                                 nmap \
                                 bash \
                                  mtr \
                                  wrk \
                                   jq

CMD ["socat", "-v", "TCP-LISTEN:2525,fork,reuseaddr", "exec:'/bin/cat'"]
