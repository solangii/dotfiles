# Common

## Generate SSH Key

```
> ssh-keygen -t ed25519
```


## productivity
- fzf: 터미널에서 파일, 디렉토리, 커맨드 검색할 때 엄청 빠르고 편리함
  - ls | fzf 하면 인터랙티브하게 파일 선택 가능
- ripgrep: grep보다 빠르고 강력한 검색 도구
  - "pattern" → grep보다 빠른 텍스트 검색
- bat: cat 명령어의 업그레이드 버전, 코드 하이라이팅 지원
- [eza](https://github.com/eza-community/eza?tab=readme-ov-file): ls 대체제, 컬러 출력 + Git 상태 표시

```bash
sudo apt install -y fzf ripgrep bat
```


## server monitoring
- btop: htop보다 UI가 더 직관적. CPU & 메모리 사용량 보기 좋음
- nmon: 서버 성능 모니터링 툴
- glances: 전체 시스템 상태를 한눈에 볼 수 있음
- iftop: 네트워크 트래픽 실시간 확인

```bash
sudo apt install -y btop nmon glances iftop
```
