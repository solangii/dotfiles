#!/bin/bash

echo "🔑 sudo 사용자 설정..."

# 현재 사용자에게 sudo 권한 부여
sudo usermod -aG sudo $USER

echo "✅ sudo 설정 완료! 재로그인이 필요할 수 있습니다."