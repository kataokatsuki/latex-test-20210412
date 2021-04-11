FROM alpine:latest

RUN apk add bash curl sudo perl vim && \
    wget http://texlive.texjp.org/current/tlnet/install-tl-unx.tar.gz && \
    mkdir /tmp/install-tl-unx && \
    tar -xvf install-tl-unx.tar.gz -C /tmp/install-tl-unx && \
    echo "i" | /tmp/install-tl-unx/install-tl-*/install-tl -no-gui -repository http://texlive.texjp.org/current/tlnet/ && \
    sudo /usr/local/texlive/????/bin/*/tlmgr path add