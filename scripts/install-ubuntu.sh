#!/bin/bash

# 업데이트 및 패키지 설치
sudo apt update && sudo apt upgrade -y

# 필수 패키지 설치
sudo apt install -y vim git zsh wget curl openssh-server python3 tmux

# zsh 설정
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -Y
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/wting/autojump.git && cd autojump && python3 install.py


# dotfiles 설정
sudo mkdir Workspaces && cd Workspaces
git clone git@github.com:solangii/dotfiles.git

# 설정 파일 위치
DOTFILES=$HOME/Workspaces/dotfiles


# 대상 설정 파일 목록
CONFIG_FILES=(
    ".gitconfig"
    ".tmux.conf"
    ".vimrc"
    ".zshrc"
    ".ssh/config"
)

# 각 설정 파일 처리
for config_file in "${CONFIG_FILES[@]}"; do
    # 기존 설정 파일 삭제
    if [ -f "~/$config_file" ]; then
        rm -rf "~/$config_file"
        echo "기존 설정 파일 (~/$config_file)을 삭제했습니다."
    fi
done


ln -s $DOTFILES/gitconfig/.gitconfig ~/.gitconfig
ln -s $DOTFILES/tmux/.tmux.conf ~/.tmux.conf
ln -s $DOTFILES/vim/.vimrc ~/.vimrc
ln -s $DOTFILES/zsh/.zshrc ~/.zshrc
ln -s $DOTFILES/ssh-config/config ~/.ssh/config
ln -s $DOTFILES/zsh/.zshrc ~/.zshrc 


# 기본 쉘 설정 (zsh)
chsh -s $(which zsh)
source ~/.zshrc


# 스크립트 종료
echo "설치 완료!"
