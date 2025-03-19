#!/bin/bash

# 현재 디렉토리를 기준으로 설정
DOTFILES_DIR=$(pwd)

# 심볼릭 링크 생성 함수
create_symlink() {
  local source_file=$1
  local target_file=$2

  if [ -e "$target_file" ]; then
    echo "⚠️ $target_file 이미 존재합니다. 백업을 생성합니다."
    mv "$target_file" "${target_file}.backup"
  fi

  ln -s "$source_file" "$target_file"
  echo "$source_file -> $target_file 심볼릭 링크 생성 완료"
}

create_symlink "$DOTFILES_DIR/vim/.vimrc" "$HOME/.vimrc"
create_symlink "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/gitconfig/.gitconfig" "$HOME/.gitconfig"
create_symlink "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"


echo "모든 설정 파일이 적용되었습니다."