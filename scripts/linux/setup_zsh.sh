#!/bin/bash

echo "💻 Zsh 설치 및 설정..."

if ! command -v zsh &> /dev/null; then
    echo "Zsh이 설치되지 않았습니다. 설치를 진행합니다."
    sudo apt install -y zsh
fi

# 기본 쉘 변경
chsh -s $(which zsh)

# Oh My Zsh 설치
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh 설치 중..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 플러그인 설치
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
echo "🔌 플러그인 설치..."
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-completions "$ZSH_CUSTOM/plugins/zsh-completions"

# 테마 변경 (Powerlevel10k)
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    echo "🎨 Powerlevel10k 테마 설치..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
fi

DOTFILES_ZSHRC="$HOME/dotfiles/zsh/.zshrc"
if [ -f "$DOTFILES_ZSHRC" ]; then
    echo "🔗 기존 .zshrc 파일 적용..."
    ln -sf "$DOTFILES_ZSHRC" "$HOME/.zshrc"
else
    echo "⚠️ dotfiles에 .zshrc 파일이 존재하지 않습니다!"
fi

echo "✅ Zsh 설정 완료! 변경 사항을 적용하려면 'exec zsh' 또는 재로그인을 해주세요."