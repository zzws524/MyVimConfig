set nu 
set ruler
set foldenable
set autoread

" For vundle
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vim-scripts repos
Bundle 'bash-support.vim'
Bundle 'perl-support.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'taglist.vim'

filetype plugin indent on 


"for YouCompleteMe
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>


"for taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Auto_Open = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window =1
let Tlist_WinWidth = 40
noremap <F8> :TlistToggle<CR>
noremap <F6> :!ctags -R<CR>

"for Nerdtree
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=40
let g:NERDTreeShowLineNumbers=1
let g:neocomplcache_enable_at_startup = 1 

"for python fold
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
vnoremap <space> zf

"one key run python
func! RunPython2()
      exec "!python %"
endfunc

func! RunPython3()
      exec "!python3 %"
endfunc

func! RunYapf()
    exec "w"
    exec "!python3 /home/ziwen/.local/lib/python3.7/site-packages/yapf --style google % | sponge %:t"
    exec "checktime"
endfunc

map <F2> :call RunPython2()<CR>
map <F3> :call RunPython3()<CR>
map <F4> :call RunYapf()<CR>
