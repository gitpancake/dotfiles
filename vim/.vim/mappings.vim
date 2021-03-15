" Keep visual selection
vnoremap < <gv
vnoremap > >gv

" */#/n/N
nmap * *zz
nmap # #zz
nmap n nzz
nmap N Nzz

" Change j/k to wrap correctly
nnoremap j gj
nnoremap k gk

" cgn/cgN
nnoremap c*  *``cgn
nnoremap c#  #``cgN
nnoremap c>* *``cgn<C-r><C-o>"
nnoremap c># #``cgN<C-r><C-o>"
nnoremap <Plug>PrependText* n".P:call repeat#set("\<Plug>PrependText*")<CR>
nnoremap c<*                *Ncgn<C-r>"<C-o>`[<C-o>:call repeat#set("\<Plug>PrependText*")<CR>
nnoremap <Plug>PrependText# n".P:call repeat#set("\<Plug>PrependText#")<CR>
nnoremap c<#                #cgN<C-r>"<C-o>`[<C-o>:call repeat#set("\<Plug>PrependText#")<CR>

" FZF
nnoremap \ :Buffers<CR>
nnoremap <tab> :FZF<CR>

" fileExplorer
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap - :NERDTreeFind<CR>
augroup CancelNERDTreeQ
  au!
  au FileType nerdtree unmap <buffer> q
augroup END

" Undo Tree
map <C-u> :UndotreeToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

" Disable arrow keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Navigate split
noremap <up> <C-w><up>
noremap <down> <C-w><down>
noremap <left> <C-w><left>
noremap <right> <C-w><right>

" Clipboard usage
noremap <leader>cy "+y
noremap <leader>cP "+P
noremap <leader>cp "+p
noremap <leader>cd "+d

" Buffer navigation
nnoremap <leader>< :tabN<CR>
nnoremap <leader>> :tabn<CR>
nnoremap <leader><CR> :tabe %<CR>
nnoremap <leader>bd :bn<CR> :bd #<CR>

" Save  and exit
nnoremap <leader>s :noh<CR>:update<CR>
nnoremap <leader>w :noh<CR>:w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>

" Clear highlight
nnoremap <C-l> :noh<CR>

" Reload nvim config
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>vE :tabe $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>
nnoremap <leader>vL :tabe $HOME/.vim/lsp.lua<CR>
nnoremap <leader>vl :e $HOME/.vim/lsp.lua<CR>
nnoremap <leader>vM :tabe $HOME/.vim/mappings.vim<CR>
nnoremap <leader>vm :e $HOME/.vim/mappings.vim<CR>
nnoremap <leader>vP :tabe $HOME/.vim/plugins.vim<CR>
nnoremap <leader>vp :e $HOME/.vim/plugins.vim<CR>
nnoremap <leader>vC :tabe $HOME/.vim/config.vim<CR>
nnoremap <leader>vc :e $HOME/.vim/config.vim<CR>

" Splits
nnoremap <leader>\| :vs<CR>
nnoremap <leader>_ :sp<CR>
nnoremap <leader>- :sp<CR>
nnoremap <C-w><C-w> <C-w>\|<C-w>_

" Plug
noremap <leader>pi :PlugInstall<CR>
noremap <leader>pu :PlugUpdate<CR>
noremap <leader>pc :PlugClean<CR>

" Fugitive
function! ToggleGStatus()
    if buflisted(bufname('.git/index'))
        bd .git/index
    else
        Gstatus
    endif
endfunction
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :call ToggleGStatus()<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gB :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gp :set termwinsize=10x0<CR>:term git push<CR>
nnoremap <leader>gP :set termwinsize=10x0<CR>:term git pull<CR>

" Select all
nnoremap <leader>a ggVG

" Rgs
nnoremap <leader>F :Rg<space>
nnoremap <leader>f :set opfunc=ag_helper#look_for_block_op<CR>g@
nmap <leader>f<leader>f <leader>fiw
vnoremap <leader>f :<C-u>call ag_helper#look_for_block('`<', '`>')<CR>

" Duplicates
nnoremap <leader>d :set opfunc=duplicate#duplicate_op<CR>g@
nmap <leader>d<leader>d yyP
vnoremap <leader>d :<C-u>call duplicate#duplicate('`<', '`>')<CR>

" Repl-it
nnoremap <expr> <leader>r repl_it#normal_mode()
vnoremap <leader>r :<C-u>call repl_it#visual_mode()<CR>
nmap <leader>rr V<leader>r

" Neovim LSP
nmap <silent> ]a :lua vim.lsp.diagnostic.goto_next()<CR>
nmap <silent> [a :lua vim.lsp.diagnostic.goto_prev()<CR>
nmap <silent> <localleader>i :lua vim.lsp.buf.implementation()<CR>
nmap <silent> <localleader>r :lua vim.lsp.buf.references()<CR>
nmap <silent> <localleader>d :lua vim.lsp.buf.definition()<CR>
nmap <silent> <localleader><localleader> :lua vim.lsp.buf.code_action()<CR>
nmap <silent> <localleader>R :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>

" Markdown
augroup MarkdownManipulation
  au!
  au FileType markdown nnoremap <buffer> <localleader>n :normal o- [-]<CR>hr jk
  au FileType markdown nnoremap <buffer> <localleader><localleader> :s/^\([^a-zA-Z0-9]*\)\[.\?\]/\1\[x\]<CR>:noh<CR>j
  au FileType markdown vmap <buffer> <localleader><localleader> :'<,'>s/^\([^a-zA-Z0-9]*\)\[.\?\]/\1\[x\]<CR>:noh<CR>
  au FileType markdown nnoremap <buffer> <localleader><backspace> :s/^\([^a-zA-Z0-9]*\)\[.\?\]/\1\[ \]<CR>:noh<CR>j
  au FileType markdown vmap <buffer> <localleader><backspace> :'<,'>s/^\([^a-zA-Z0-9]*\)\[.\?\]/\1\[ \]<CR>:noh<CR>
  au FileType markdown nnoremap <buffer> <localleader>w :s/^\([^a-zA-Z0-9]*\)\[.\?\]/\1\[-\]<CR>:noh<CR>j
  au FileType markdown vmap <buffer> <localleader>w :'<,'>s/^\([^a-zA-Z0-9]*\)\[.\?\]/\1\[-\]<CR>:noh<CR>
augroup END

" Netrw
au FileType netrw nmap <buffer> o <CR>

" Add Move command (Visual / normal)
nnoremap <S-down> ddp
vnoremap <S-down> dpV`]
nnoremap <S-up> ddkP
vnoremap <S-up> dkPV`]

" No Highlight + clear trailing space
nnoremap <C-l> :noh<CR>

" Highlight helper
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" vim-test
nmap <silent> <localleader>tn :TestNearest<CR>
nmap <silent> <localleader>tf :TestFile<CR>
nmap <silent> <localleader>ts :TestSuite<CR>
nmap <silent> <localleader>tt :let g:test#scala#blooptest#project_name = ''<Left>
