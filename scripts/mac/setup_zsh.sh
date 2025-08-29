#!/bin/bash

chsh -s $(which zsh)
# Oh My Zsh ��ġ
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh ��ġ ��..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# �÷����� ��ġ
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
echo "�÷����� ��ġ ��..."
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# --- �׸� �� ��Ʈ ���� ---
# Nerd Fonts ��ġ (Powerlevel10k��)
echo "Powerlevel10k�� ���� Nerd Fonts ��ġ ��..."
brew tap homebrew/cask-fonts
brew install --cask font-meslo-lg-nerd-font

# Powerlevel10k �׸� ��ġ
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    echo "Powerlevel10k �׸� ��ġ ��..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
fi

# Dracula �׸� ����
echo "Dracula �׸� ���� ��..."
# iTerm2 �׸� ���� �ٿ�ε�
curl -fsSL https://raw.githubusercontent.com/dracula/iterm/master/Dracula.itermcolors -o ~/Dracula.itermcolors
