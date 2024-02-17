"Without it, whenever you switch buffers and your current buffer is not
" saved, Vim will prompt you to save the file (you don't want that if you want
" to move quickly)
set hidden

let mapleader=","
set cursorline
set cursorcolumn

" Allow crosshair cursor highlighting.
hi CursorLine   cterm=NONE ctermbg=0
hi CursorColumn cterm=NONE ctermbg=0
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>


" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif


" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs),'!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

""" vim-plug plugins

call plug#begin()
Plug 'rafi/awesome-vim-colorschemes'
Plug 'danilo-augusto/vim-afterglow'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

call plug#end()

" Cursor config
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" To search for files inside Vim using fzf.vim plugin, you can use the :Files method. Run :Files from Vim and you will be prompted with fzf search prompt.
nnoremap <silent> <C-f> :Files<CR>

" To search inside files, you can use the :Rg command
nnoremap <silent> <Leader>f :Rg<CR>

"Now let's setup grepprg so that the :grep Vim command uses ripgrep. Add this in your vimrc
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" backspace setting
set backspace=indent


set relativenumber number

" colorscheme afterglow
colorscheme darkblue

"To make Vim to paste copied text from the external program with just p, you can add this in your vimrc: 
set clipboard=unnamed
