et t_Co=256
set laststatus=2                                  " 常にステータスラインを表示する
set ambiwidth=double                              " vimに全角を解釈させる
set autoread                                      " 外部エディタの変更を自動で読み直す
set hidden                                        " 変更中でも他のファイルを開けるようにする
set backspace=indent,eol,start                    " バックスペースでなんでも消せるように
set formatoptions=lmoq                            " テキスト整形オプション，マルチバイト系を追加
set number                                        " 行番号を表示
set showmatch                                     " 対応する括弧を表示
set nobackup                                      " バックアップをしない
set noswapfile                                    " スワップファイルを作らない
set expandtab                                     " タブの代わりに空白を挿入
set shiftwidth=2                                  " 自動インデントの幅を指定
set tabstop=2
set visualbell t_vb=                              " ビープ音を鳴らさない
set wildmode=longest:list
set list
set listchars=tab:>.,trail:_,extends:>,precedes:< " 不可視文字の表示形式
set display=uhex                                  " 印字不可能文字を16進数で表示
set lazyredraw                                    " コマンド実行中は再描画しない
set ttyfast                                       " 高速ターミナル接続を行う
set nocompatible                                  " VI互換なし
set autoindent                                    " 自動でインデント
set smartindent                                   " 新しい行を開始したときのインデントを同じにする
set directory-=.
set smarttab
set textwidth=0                                   " 自動折り返しをしない
set background=light
set clipboard=unnamed
set timeoutlen=300                                " KeyMapタイムアウト待ち時間
set incsearch                                     " [検索]入力の度に検索する
set nowrapscan                                    " [検索]先頭にループしない
set hlsearch                                      " [検索]文字をハイライトする
set noignorecase                                  " [検索]大文字小文字を区別しない
set smartcase                                     " [検索]大文字を含んでいたら大文字小文字を区別する
set guioptions+=a
set ttymouse=xterm2
set whichwrap=b,s,h,l,<,>,[,]
set foldenable!
hi Pmenu ctermbg=4

if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle 自体を neobundle で管理する場合は NeoBundleFetch を使います。
NeoBundleFetch 'Shougo/neobundle.vim'

" インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'

" コード補完
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'marcus/rsense'
NeoBundle 'supermomonga/neocomplete-rsense.vim'

" 静的解析
NeoBundle 'scrooloose/syntastic'

" ドキュメント参照
NeoBundle 'thinca/vim-ref'
NeoBundle 'yuku-t/vim-ref-ri'

" メソッド定義元へのジャンプ
NeoBundle 'szw/vim-tags'

" 自動で閉じる
NeoBundle 'tpope/vim-endwise'

NeoBundle 'Shougo/neobundle.vim.git'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimproc.git', {
      \ 'build' : {
      \     'windows' : 'echo "Sorry, cannot update vimproc binary file in Windows."',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/vimfiler.git'
NeoBundle 'Shougo/vimshell.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'tsukkee/unite-tag.git'
NeoBundle 'tsukkee/unite-help.git'
NeoBundle 'thinca/vim-unite-history.git'
NeoBundle 'h1mesuke/unite-outline.git'
NeoBundle 'thinca/vim-quickrun.git'
NeoBundle 'thinca/vim-ref.git'
NeoBundle 'thinca/vim-openbuf.git'
NeoBundle 'yuroyoro/vimdoc_ja.git'
NeoBundle 'Lokaltog/vim-powerline.git'
NeoBundle 'banyan/recognize_charcode.vim'
NeoBundle 'vim-scripts/smartword.git'
NeoBundle 'vim-scripts/camelcasemotion.git'
NeoBundle 'vim-scripts/grep.vim.git'
NeoBundle 'vim-scripts/eregex.vim.git'
NeoBundle 'tyru/open-browser.vim.git'
NeoBundle 'thinca/vim-visualstar.git'
NeoBundle 'scrooloose/nerdcommenter.git'
NeoBundle 'kana/vim-fakeclip.git'
NeoBundle 'vim-scripts/sudo.vim.git'
NeoBundle 'c9s/cascading.vim.git'
NeoBundle 'vim-scripts/DirDiff.vim.git'
NeoBundle 'nathanaelkane/vim-indent-guides.git'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'mattn/emmet-vim.git'
NeoBundle 'vim-scripts/xmledit.git'
NeoBundle 'h1mesuke/vim-alignta.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'taku-o/vim-toggle.git'
NeoBundle 'groenewege/vim-less.git'
NeoBundle 'vim-scripts/jade.vim.git'
NeoBundle 'vim-scripts/jQuery.git'
NeoBundle 'kchmck/vim-coffee-script.git'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'kana/vim-textobj-user.git'
NeoBundle 'kana/vim-textobj-syntax.git'
NeoBundle 'kana/vim-textobj-lastpat.git'
NeoBundle 'kana/vim-textobj-indent.git'
NeoBundle 'kana/vim-textobj-function.git'
NeoBundle 'kana/vim-textobj-fold.git'
NeoBundle 'thinca/vim-textobj-plugins.git'
NeoBundle 'vim-scripts/textobj-rubyblock.git'
NeoBundle 'vim-scripts/textobj-entire.git'
NeoBundle 'vim-scripts/textobj-jabraces.git'
NeoBundle 'vim-scripts/operator-user.git'
NeoBundle 'vim-scripts/operator-camelize.git'
NeoBundle 'vim-scripts/operator-replace.git'
NeoBundle 'motemen/git-vim.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'vim-scripts/vcscommand.vim.git'
NeoBundle 'vim-scripts/taglist.vim.git'
NeoBundle 'vim-scripts/Source-Explorer-srcexpl.vim'
NeoBundle 'yuroyoro/vim-autoclose.git'
NeoBundle 'yuroyoro/yuroyoro256.vim'
" }

" JavaScript {
NeoBundle 'teramako/jscomplete-vim.git'
NeoBundle 'vim-scripts/JavaScript-syntax.git'
" }

" Ruby {
NeoBundle 'vim-scripts/matchit.zip.git'
NeoBundle 'vim-scripts/ruby-matchit.git'
NeoBundle 'taichouchou2/vim-ref-ri'
NeoBundle 'vim-ruby/vim-ruby.git'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'vim-scripts/dbext.vim'
NeoBundle 'taichouchou2/vim-rails'
NeoBundle 'romanvbabenko/rails.vim'
NeoBundle 'taq/vim-rspec'
NeoBundle 'basyura/unite-rails.git'
NeoBundle 'taichouchou2/vim-rsense'
NeoBundle 'ujihisa/neco-ruby.git'
" }

" Haskell {
NeoBundle 'dag/vim2hs.git'
NeoBundle 'eagletmt/ghcmod-vim.git'
NeoBundle 'pbrisbin/html-template-syntax.git'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'eagletmt/unite-haddock.git'
NeoBundle 'ujihisa/ref-hoogle'
" }

" Scala {
NeoBundle 'derekwyatt/vim-scala.git'
" }

" RedMine {
NeoBundle 'kana/vim-metarw.git'
NeoBundle 'mattn/vim-metarw-redmine.git'
" }

" Twitter {
NeoBundle 'basyura/bitly.vim.git'
NeoBundle 'basyura/TweetVim.git'
NeoBundle 'basyura/twibill.vim.git'
NeoBundle 'h1mesuke/unite-outline.git'
NeoBundle 'mattn/webapi-vim.git'
NeoBundle 'yomi322/neco-tweetvim.git'
NeoBundle 'yomi322/unite-tweetvim.git'
" }

" Lingr {
NeoBundle 'tsukkee/lingr-vim.git'
" }

call neobundle#end()

" Rsense
let g:rsenseHome = "/usr/local/Cellar/rsense/0.3/libexec"
let g:rsenseUseOmniFunc = 1

" 挿入モードでTABを挿入するとき、代わりに適切な数の空白を使う
set expandtab

" " 新しい行を開始したとき、新しい行のインデントを現在行と同じにする
set autoindent

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

"= プラグイン用設定

" --------------------
" yuroyoro256.vim
" --------------------
colorscheme yuroyoro256

" ターミナルタイプによるカラー設定
if &term =~ "xterm-256color" || "screen-256color"
  " 256色
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c


" --------------------
" QuickRun
" --------------------
let g:quickrun_config = {
\  "_" : {
\      "runner" : "vimproc",
\      "runner/vimproc/updatetime": 60
\  },
\}


" --------------------
" unite.vim
" --------------------
" 入力モードで開始する
" let g:unite_enable_start_insert=1

" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

" Unite bookmarkで開くときのアクションのデフォルトをVimfilerに変更
call unite#custom_default_action('source/bookmark/directory' , 'vimfiler')


" --------------------
" VimFiler
" --------------------
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_as_default_explorer=1


" --------------------
" VimShell
" --------------------
let g:vimshell_prompt = '$ '
let g:vimshell_user_prompt = '"" . getcwd() . ""'

au FileType vimshell call s:vimshell_settings()
function! s:vimshell_settings() "{{{
  nunmap <buffer> <C-l>
  nunmap <buffer> <C-k>
  iunmap <buffer> <C-l>
endfunction "}}}


" --------------------
" neocomplcache
" --------------------
let g:neocomplcache_enable_at_startup = 1


" --------------------
" vim-coffeescript
" --------------------
" QuickRunでコンパイル後のJavaScriptを別ウィンドウに表示
let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}


" --------------------
" Snippet
" --------------------
" snippetの編集
au BufRead,BufNewFile *.snip  set filetype=snippet

" let g:neocomplcache_snippets_dir = $HOME.'/.vim/snippets'
let g:neosnippet#snippets_directory= $HOME.'/.vim/snippets'

" <TAB>: completion.                                         
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"   
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>" 

" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif


" --------------------
" vim-rails.vim
" --------------------
let g:rails_some_option = 1
let g:rails_level = 4
let g:rails_syntax = 1
let g:rails_statusline = 1
let g:rails_url='http://localhost:3000'
let g:rails_subversion=0
let g:rails_default_file='config/database.yml'


" --------------------
" RSpec
" --------------------
augroup RSpec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
augroup END

let g:quickrun_config['ruby.rspec'] = {'command': 'rspec', 'cmdopt': '--format progress -I .', 'outputter': 'buffer:filetype=rspec-result'}

" --------------------
" tcomment
" --------------------
let g:tcommentMapLeader1 = '<C-_>'
let g:tcommentMapLeader2 = '<Leader>'
let g:tcommentMapLeaderOp1 = 'gc'
let g:tcommentMapLeaderOp2 = 'gC'

" tcommentで使用する形式を追加
if !exists('g:tcomment_types')
  let g:tcomment_types = {}
endif
let g:tcomment_types = {
      \'eruby_surround' : "<%% %s %%>",
      \'eruby_surround_minus' : "<%% %s -%%>",
      \'eruby_surround_equality' : "<%%= %s %%>",
\}

" マッピングを追加
function! SetErubyMapping2()
  nmap <buffer> <C-_>c :TCommentAs eruby_surround<CR>
  nmap <buffer> <C-_>- :TCommentAs eruby_surround_minus<CR>
  nmap <buffer> <C-_>= :TCommentAs eruby_surround_equality<CR>
  vmap <buffer> <C-_>c :TCommentAs eruby_surround<CR>
  vmap <buffer> <C-_>- :TCommentAs eruby_surround_minus<CR>
  vmap <buffer> <C-_>= :TCommentAs eruby_surround_equality<CR>
endfunction

" erubyのときだけ設定を追加
au FileType eruby call SetErubyMapping2()


" --------------------
" Rsense
" --------------------
let g:rsenseHome = expand('~/rsense-0.3')
let g:rsenseUseOmniFunc = 1

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'


" --------------------
" zen-coding
" --------------------
let g:user_zen_settings = {'indentation' : '  '}

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}

" --------------------
" ctags
" --------------------
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:SrcExpl_updateTagsCmd = "/usr/local/bin/ctags --sort=foldcase -R ."
if has("cscope")
  set csprg=/usr/local/bin/cscope
  set csto=0
  set cst
  set nocsverb
  if filereadable("cscope.out")
    cs add cscope.out
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
  set csverb
  set cscopequickfix=s-,c-,d-,i-,t-,e-
endif
syntax on

