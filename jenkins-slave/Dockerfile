FROM alpine

RUN apk add --update \
    python \
    python-dev \
    py-pip \
  && pip install --upgrade pip awscli boto3

# Other packages
RUN apk add --no-cache bash gawk sed grep bc coreutils make jq curl openrc docker


