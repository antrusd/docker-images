FROM busybox:1.32.0-uclibc

ENV  KUBECTL_VERSION v1.16.15
ENV  HELM_VERSION v3.3.1

RUN  mkdir -p /usr/bin && \
     wget -q --no-check-certificate -O /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
     chmod 0755 /usr/bin/kubectl && \
     wget -q --no-check-certificate -O - https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz | tar zxO linux-amd64/helm > /usr/bin/helm && \
     chmod 0755 /usr/bin/helm

CMD  ["sh"]

