set nocompatible

let g:critiqjo#rtp0_dir = $HOME . '/.vim/'
let g:critiqjo#cache_dir = $HOME . '/.cache/nvim/'

" --- Plug Scripts {{{
call plug#begin(g:critiqjo#cache_dir . 'plugged')

exe 'source ' . g:critiqjo#rtp0_dir . 'base/plugs.vim'

call plug#end()
" --- Plug Scripts }}}

" --- Global Options {{{
exe 'source ' . g:critiqjo#rtp0_dir . 'base/options.vim'

set nrformats-=octal " For use with <C-a> and <C-x>
set ttimeout
set ttimeoutlen=100
" --- Global Options }}}

" --- Plugin Options {{{
exe 'source ' . g:critiqjo#rtp0_dir . 'base/plugs-opts.vim'
" --- Plugin Options }}}

" --- Keymaps {{{
exe 'source ' . g:critiqjo#rtp0_dir . 'base/keymaps.vim'

if !has('gui_running')
  imap <Esc>h <M-h>
  imap <Esc>j <M-j>
  imap <Esc>k <M-k>
  imap <Esc>l <M-l>

  imap <Esc>o <M-o>
  imap <Esc>O <M-O>

  inoremap <nowait> <Esc> <Esc>
endif
" --- Keymaps }}}

exe 'source ' . g:critiqjo#rtp0_dir . 'base/misc.vim'

" vim:fdm=marker:ts=2:sw=2
