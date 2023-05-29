FROM debian:bookworm-slim

# install docker engine
RUN apt-get update && apt-get install -y ca-certificates curl gnupg wget && \
    install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    chmod a+r /etc/apt/keyrings/docker.gpg
RUN echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

RUN wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb

RUN apt-get update && \
    apt-get install -y dotnet-runtime-6.0

ENV LANG C.UTF-8
ENV LANGUAGE en_US:

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID $USERNAME
USER $USERNAME
WORKDIR /home/$USERNAME/

RUN mkdir actions-runner
WORKDIR /home/$USERNAME/actions-runner
RUN wget https://github.com/actions/runner/releases/download/v2.304.0/actions-runner-linux-x64-2.304.0.tar.gz && \
    tar xzf ./actions-runner-linux-x64-2.304.0.tar.gz

ARG TOKEN
RUN ./config.sh --url https://github.com/bottlenome/generic_cube --token ${TOKEN}
