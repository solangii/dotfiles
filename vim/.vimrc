" highlighting 관련
if has("syntax")
	syntax on
endif
set hlsearch 
"set background=dark  " 검정배경을 사용할 때, (이 색상에 맞춰 문법 하이라이트 색상이 달라집니다.)


" indent 관련
set number
set autoindent
set cindent
set si                    " smart indent
set shiftwidth=4      " shift를 4칸으로 ( >, >>, <, << 등의 명령어)
set tabstop=4         " tab을 4칸으로
"set expandtab       " tab 대신 띄어쓰기로


" 커서 이동 관련
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
set nocompatible   " 방향키로 이동가능
set ruler              " 상태표시줄에 커서의 위치 표시
set bs=indent,eol,start    " backspace 키 사용 가능
set ignorecase     " 검색시 대소문자 구별하지않음


" 인코딩 관련
set fileencodings=utf-8,euc-kr    " 파일인코딩 형식 지정
" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif


" 표시 관련
set history=1000    " 명령어에 대한 히스토리를 1000개까지
set nobackup      " 백업파일을 만들지 않음
set title               " 제목을 표시
set showmatch    " 매칭되는 괄호를 보여줌
set nowrap         " 자동 줄바꿈 하지 않음
set wmnu           " tab 자동완성시 가능한 목록을 보여줌
set ignorecase     " 검색시 대소문자 구별하지않음

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab	" yaml 띄어쓰기

