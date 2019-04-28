FROM alpine:3.9
ENV PACKER_VERSION 1.4.0

RUN wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip \
    && unzip packer_${PACKER_VERSION}_linux_amd64.zip \
    && mv packer /usr/local/bin/ \
    && chmod +x /usr/local/bin/packer \
    && rm packer_${PACKER_VERSION}_linux_amd64.zip
    
