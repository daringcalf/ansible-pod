FROM docker.io/library/python:3.10.1-alpine3.15

# RUN apk add build-base py3-pip python3-dev
# RUN pip3 install --upgrade pip && hash -r
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
# https://stackoverflow.com/questions/66118337/how-to-get-rid-of-cryptography-build-error

# for ansible and ansible-core versions, see
# https://github.com/ansible/ansible/issues/75141#issuecomment-870976103

RUN apk add --no-cache git bash sshpass openssh gcc musl-dev libffi-dev openssl-dev python3-dev \
    && pip3 install ansible==2.9.27 netaddr six

# ssh keygen
# bashrc

CMD ["sleep", "infinity"]
