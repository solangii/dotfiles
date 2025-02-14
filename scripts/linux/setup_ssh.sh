#!/bin/bash

echo "🔐 SSH 설정 시작..."

# SSH 설치 확인
sudo apt install -y openssh-server

# SSH 서비스 활성화
sudo systemctl enable ssh
sudo systemctl start ssh

# 방화벽 설정 (22번 포트 허용)
sudo ufw allow OpenSSH
sudo ufw enable

# SSH 키 생성 (기존 키가 없을 경우)
if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
    echo "🗝️ SSH 키 생성 중..."
    ssh-keygen -t ed25519 -C "solangii1229@gmail.com" -f "$HOME/.ssh/id_ed25519" -N ""
fi

echo "✅ SSH 설정 완료!"