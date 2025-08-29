#!/bin/bash

chsh -s $(which zsh)
# Oh My Zsh 설치
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh 설치 중..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 플러그인 설치
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
echo "플러그인 설치 중..."
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# --- 테마 및 폰트 설정 ---
# Nerd Fonts 설치 (Powerlevel10k용)
echo "Powerlevel10k를 위한 Nerd Fonts 설치 중..."
brew tap homebrew/cask-fonts
brew install --cask font-meslo-lg-nerd-font

# Powerlevel10k 테마 설치
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    echo "Powerlevel10k 테마 설치 중..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
fi

# Dracula 테마 적용
echo "Dracula 테마 적용 중..."
# iTerm2 테마 파일 다운로드
curl -fsSL https://raw.githubusercontent.com/dracula/iterm/master/Dracula.itermcolors -o ~/Dracula.itermcolors
