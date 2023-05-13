FROM ubuntu:20.04

# https://github.com/nordic-institute/X-Road-Security-Server-toolkit/blob/master/docs/xroad_security_server_toolkit_user_guide.md#2-installation
RUN apt update && \
    apt install -y python3-pip && \
    python3 -m pip install --upgrade pip && \
    pip3 install cement && \
    pip3 install --extra-index-url https://artifactory.niis.org/artifactory/xroad-extensions-release-pypi/ xrdsst --trusted-host artifactory.niis.org
