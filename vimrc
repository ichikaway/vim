set laststatus=2
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).'\|'.&ff.']'}\ \ %l/%L\ (%P)%m%=%{strftime(\"%Y/%m/%d\ %H:%M\")} 

" 検索文字をハイライト
set hlsearch 
" 大文字小文字無視しない
set ignorecase

" escapeでハイライトを消す 
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" http://d.hatena.ne.jp/secondlife/20060705/1152110844
map <silent> sy :call YanktmpYank()<CR> 
map <silent> sp :call YanktmpPaste_p()<CR> 
map <silent> sP :call YanktmpPaste_P()<CR> 

" 行番号
set number




" 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set autoindent

" ファイル内の <Tab> が対応する空白の数。
":set tabstop=4


"括弧を入力したときに、カーソルを真ん中へ
"inoremap () ()<LEFT>
"inoremap [] []<LEFT>
"inoremap {} {}<LEFT>
"inoremap <> <><LEFT>
"inoremap "" ""<LEFT>
"inoremap '' ''<LEFT>

" 削除キーでyankしない
nnoremap x "_x
"nnoremap d "_d
nnoremap D "_D

" netrwをツリー表示に
let g:netrw_liststyle=3

" ctpファイルをphpとして色認識
autocmd BufNewFile,BufRead *.ctp set filetype=php
let php_htmlInStrings=1



"autocmd FileType php  setlocal expandtab tabstop=4 shiftwidth=4 dictionary=~/.vim/dict/php.dict
"autocmd FileType php  setlocal tags+=~/.vim/tags/cakephp_tags

"autocmd FileType php  setlocal expandtab tabstop=4 shiftwidth=4
"autocmd FileType php  setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType php  setlocal tabstop=4 shiftwidth=4
"autocmd FileType php  setlocal tabstop=4 shiftwidth=4
autocmd FileType php setlocal noeol binary fileformat=dos


autocmd FileType javascript  setlocal expandtab tabstop=4 shiftwidth=4


" cakephp用snipet
au FileType php set ft=php.cakephp



"Ctrl +x +k, PHP補完表示
autocmd FileType php  setlocal dictionary=~/.vim/dict/php.dict

" http://www.asahi-net.or.jp/~wv7y-kmr/memo/vim_php.html
"Ctrl +x +], CAKE補完表示
"Ctrl +w +] CAKEオリジナル関数ファイルに遷移
autocmd FileType php  setlocal tags+=~/.vim/tags/cakephp_tags

"日本語の※などに対応
set ambiwidth=double

"autocomplpop.vimの色指定
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4


" 全角スペースを表示させる
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/



"4文字以上の入力で、autopopcoml.vimを起動
let g:AutoComplPop_IgnoreCaseOption = 4
let g:AutoComplPop_BehaviorKeywordLength = 4
"CSSは除外 autopopcoml.vim
let g:AutoComplPop_BehaviorCssOmniPropertyLength = -1
let g:AutoComplPop_BehaviorCssOmniValueLength = -1
let g:AutoComplPop_BehaviorHtmlOmniLength = -1


