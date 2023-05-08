"  Without it, whenever you switch buffers and your current buffer is not
" saved, Vim will prompt you to save the file (you don't want that if you want
" to move quickly)
set hidden

" vim-plug plugins
call plug#begin()
Plug 'rafi/awesome-vim-colorschemes'
Plug 'danilo-augusto/vim-afterglow'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" To search for files inside Vim using fzf.vim plugin, you can use the :Files method. Run :Files from Vim and you will be prompted with fzf search prompt.
nnoremap <silent> <C-f> :Files<CR>

" To search inside files, you can use the :Rg command
nnoremap <silent> <Leader>f :Rg<CR>

"Now let's setup grepprg so that the :grep Vim command uses ripgrep. Add this in your vimrc
set grepprg=rg\ --vimgrep\ --smart-case\ --follow


set relativenumber number

" colorscheme afterglow
colorscheme darkblue

 "To make Vim to paste copied text from the external program with just p, you can add this in your vimrc: 
set clipboard=unnamed
