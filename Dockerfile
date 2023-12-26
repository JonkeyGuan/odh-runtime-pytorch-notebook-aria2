FROM quay.io/modh/runtime-images:runtime-pytorch-ubi9-python-3.9-2023b-20231110-865fe76

USER root

COPY hfd /usr/local/bin/hfd

RUN wget https://github.com/q3aql/aria2-static-builds/releases/download/v1.36.0/ca-certificates.crt && \
    mv ca-certificates.crt /etc/ssl/certs && \
    rpm -ivh https://github.com/q3aql/aria2-static-builds/releases/download/v1.36.0/aria2-1.36.0-linux-gnu-64bit-build1.rpm --force && \
    yum -y install git-lfs

USER 1001
