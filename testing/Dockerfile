#Download base image ubuntu 20.04
FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="scotty.skidmore@gmail.com"
LABEL version="0.1"
LABEL description="custom Docker Image to test dotfiles is working"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Add a new user
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN apt install sudo -y
RUN usermod -aG sudo docker
USER docker
WORKDIR /home/docker

# Copy over dotfiles
ADD ./dotfiles dotfiles/

