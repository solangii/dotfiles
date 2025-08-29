### mac-os
- 한영 shift space로 바꾸기 
  -  `open ~/Library/Preferences/com.apple.symbolichotkeys.plist`
  -  AppleSymbolicHotkeys. 60번 value - parameters 항목 - item 2 값을 `131072`로 바꿔줌 
  -  Reboot
- Homebrew 설치
  `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  -  package 설치: `brew bundle` 
- terminal 설정 (iterm2)
  - setup_zsh.sh 실행
  - 테마적용: iterm2 > prefererens > profiles > colors > ~/Dracula.itermcolors 적용
  - exec zsh
- 원화 기호를 백틱으로 고정한다.
  - ~/Library/KeyBindings/DefaultKeyBinding.dict 파일을 만들고 다음 내용을 추가한다:
    ```
    {
      "₩" = ("insertText:", "`");
    }
    ```
- key repeat rate를 빠르게 변경한다:
  - system settings > keyboard > key repeat rate > fast
  - system settings > keyboard > delay until repeat > short


### ubuntu
1. SSH 키 생성 및 등록
  - `ssh-keygen`
  - `cat ~/.ssh/id_rsa.pub` 해당 내용 git에 등록
2. script실행 (필수 패키지 설치 & dotfiles softlink)
3. (todo) ssh setting
	- sshd config
	- ufw 방화벽
	- 공유기 포트포워딩
