#Download base image ubuntu 20.04
FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="scotty.skidmore@gmail.com"
LABEL version="0.1"
LABEL description="custom Docker Image to test dotfiles is working"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update

# Add a new user
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN apt install sudo -y
RUN usermod -aG sudo docker

# Copy over dotfiles
ADD ./dotfiles /home/docker/dotfiles/
RUN chown -R docker /home/docker/dotfiles/

# switch to new user
USER docker
WORKDIR /home/docker

ENV DEBIAN_FRONTEND=noninteractive
