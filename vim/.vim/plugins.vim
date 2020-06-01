call plug#begin('~/.vim/plugged')
  " {{{ AutoPairs
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  " }}}

  " {{{ TCommentVim
  Plug 'tomtom/tcomment_vim'
  " }}}

  " {{{ VimLion
  Plug 'tommcdo/vim-lion'
  let g:lion_squeeze_spaces = 1
  " }}}

  " {{{ VimAbolish
  Plug 'tpope/vim-abolish'
  " }}}

  " {{{ Nerdtree
  Plug 'scrooloose/nerdtree'
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  let g:NERDTreeQuitOnOpen = 1
  " }}}

  " {{{ VimCartographe
  Plug 'baspar/vim-cartographe'
  " }}}

  " {{{ VimEasymotion
  Plug 'easymotion/vim-easymotion'
  " }}}

  " {{{ VimLSP
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  let g:lsp_diagnostics_echo_cursor = 1
  let g:lsp_diagnostics_enabled = 1
  let g:lsp_diagnostics_float_cursor = 1
  let g:lsp_virtual_text_enabled = 0
  hi! LspInformationText ctermfg=239 ctermbg=3
  hi! LspHintText ctermfg=239 ctermbg=3
  " }}}

  " {{{ VimJavascript
  Plug 'pangloss/vim-javascript', {'for': ['typescript', 'javascript', 'typescriptreact', 'javascriptreact']}
  Plug 'MaxMEllon/vim-jsx-pretty', {'for': ['typescript', 'javascript', 'typescriptreact', 'javascriptreact']}
  Plug 'leafgarland/typescript-vim', {'for': ['typescript', 'javascript', 'typescriptreact', 'javascriptreact']}
  " }}}

  " {{{ VimGraphql
  Plug 'jparise/vim-graphql', {'for': ['typescript', 'javascript', 'typescriptreact', 'javascriptreact']}
  " }}}

  " {{{ Rust.Vim
  Plug 'rust-lang/rust.vim', {'for': ['rust']}
  " }}}

  " {{{ VimSexp
  Plug 'guns/vim-sexp', {'for': ['clojure']}
  Plug 'guns/vim-clojure-static', {'for': ['clojure']}
  Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure']}
  let g:clojure_align_multiline_strings = 1
  let g:sexp_insert_after_wrap = 'false'
  " }}}

  " {{{ Undotree
  Plug 'mbbill/undotree'
  " }}}

  " {{{ FZF
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  let g:fzf_colors = {
      \ 'prompt': ['fg', 'Type'],
      \ 'hl': ['fg', 'Type'],
      \ 'hl+': ['fg', 'Number'],
      \ }
  " }}}

  " {{{ VimFugitive
  Plug 'tpope/vim-fugitive'
  " }}}

  " {{{ VimDispatch
  Plug 'tpope/vim-dispatch'
  " }}}

  " {{{ VimSandwich
  Plug 'machakann/vim-sandwich'
  " }}}

  " {{{ Lightline.Vim
  Plug 'itchyny/lightline.vim'
  " }}}

  " {{{ Colorschemes
  Plug 'fcpg/vim-fahrenheit'
  Plug 'AlessandroYorba/alduin'
  Plug 'fcpg/vim-orbital'
  Plug 'fcpg/vim-farout'
  " }}}
call plug#end()

" vim: foldmethod=marker:foldlevel=1
