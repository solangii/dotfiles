#!/bin/bash

echo "🐳 Docker 설치 시작..."

# 필수 패키지 설치
sudo apt install -y ca-certificates curl gnupg

# Docker GPG 키 추가
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Docker 저장소 추가
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Docker 설치
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Docker 실행 권한 추가
sudo usermod -aG docker $USER

echo "✅ Docker 설치 완료! 재로그인이 필요할 수 있습니다."