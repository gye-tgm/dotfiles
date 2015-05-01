execute pathogen#infect()

" https://gist.github.com/rocarvaj/2513367
sy on
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number

filetype plugin indent on

" user customized commands
command Crun !~/repos/algoprobs/etc/crun %:r
command Latex !pdflatex %

" language tool setup
let g:languagetool_jar='$HOME/opt/languagetool/languagetool-commandline.jar'

" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" http://cloudhead.io/2010/04/24/staying-the-hell-out-of-insert-mode/
inoremap kj <Esc>
" ignores the arrow keys 
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

nmap <Space> i_<Esc>r


set t_Co=256
let g:seoul256_background = 234
colorscheme seoul256


" Enables fuzzy matching
set rtp+=~/.fzf

let g:jedi#use_splits_not_buffers = "right"
