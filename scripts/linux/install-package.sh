#!/bin/bash

# ubuntu 22.04
echo "📦 패키지 설치 시작..."

# package list
PACKAGES=(
    git
    curl
    wget
    python3
    python3-pip
    python3-venv
    build-essential
    tmux
    vim
    zsh
    htop
    unzip
    software-properties-common
    ca-certificates
    gnupg
    lsb-release
    npm
    autojump
    glances
    btop
    
)

sudo apt update && sudo apt upgrade -y
sudo apt install -y "${PACKAGES[@]}"

echo "✅ 패키지 설치 완료!"