" =============  SET LEADER  ============
let mapleader = ","
let maplocalleader = ","

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/.local/share/nvim/plugged')
call plug#begin('~/AppData/Local/nvim/plugged')

" Make sure you use single quotes

" My must have plugins
Plug 'mrtazz/simplenote.vim'
Plug 'mhinz/vim-startify'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-vinegar'

" colorschemes and visual plugins
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

" Trying Out Plugins
Plug 'sjl/gundo.vim'

" additional colorschemes
Plug 'nanotech/jellybeans.vim'
Plug 'rigellute/rigel'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'brooth/far.vim'
Plug 'whiteinge/diffconflicts'
Plug 'dbeniamine/cheat.sh-vim'
" Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
" Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
Plug 'wincent/command-t'
Plug '~/.local/share/nvim/plugged/csapprox'
"Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rkitover/vimpager'
Plug 'ofavre/vimcat'
"Plug 'junegunn/limelight.vim'
Plug 'editorconfig/editorconfig'
Plug 'sk1418/blockit'
Plug 'fadein/vim-FIGlet'
Plug 'justinmk/vim-sneak'
Plug 'freeo/vim-kalisi'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'zanglg/nova.vim'
Plug 'lilydjwg/colorizer'
Plug 'agude/vim-eldar'
Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'
Plug 'wakatime/vim-wakatime'
Plug 'godlygeek/tabular'
Plug 'cespare/vim-toml'

" Plugin to export code images via carbon.now
Plug 'kristijanhusak/vim-carbon-now-sh'


" Python Setup
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'


Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" post install (yarn install | npm install) then load plugin only for editing supported files
" Plug 'prettier/vim-prettier', {
"      \ 'do': 'yarn install',
"      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }


" added from neovim install tutorial https://bin.wf/9xxt
" Plug 'roxma/nvim-completion-manager'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" On-demand loading
Plug 'mbbill/undotree', { 'on': 'UndoTreeToggle' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" =============  SET LEADER  ============
let mapleader = ","

" ============  REMAP KEYS  =============
map <Leader>ti <Esc>:echo 'Current time is ' . strftime('%c')<CR>
" map! <F3> <C-R>=strftime('%c')<CR>
" nnoremap <silent> <F4> :lchdir %:p:h<CR>:pwd<CR>

" SAVE FILE
noremap <Leader>s <Esc>:up<CR>

" TABS
noremap nt <Esc>:tabnew<CR> 
noremap ct <Esc>:tabclose<CR>
noremap tn <Esc>:tabnext<CR>
noremap tp <Esc>:tabprevious<CR> 

" ============  SIMPLENOTE SETTINGS  ============
let g:SimplenoteUsername = "chadboyce@gmail.com"
let g:SimplenotePassword = "iwtfch"

"set runtimepath^=~/.vim runtimepath+=~/.vim/after
 "   let &packpath = &runtimepath
"source ~/.vimrc

" =========---------  SETTINGS  ---------========
set nobackup         " Don't create annoying backup files
set noswapfile       " Dont' use swapfile
set pastetoggle=<F2> " Paste mode toggle to paste code properly
set scrolloff=5      " start scrolling 5 lines before edge of viewpoint
set number
set spelllang=en
" set spellfile=$HOME/Dropbox/vim/spell/en.utf-8.add
set rnu             " Relative numbers

" =========---------  VISUAL SETTINGS  ---------=========
set termguicolors    " sets terminal to true colors (I think)
syntax enable 
" set t_Co=256         " Use 256 colours (Use this setting only if your terminal supports 256 colours)
set background=dark


colorscheme gruvbox
"colorscheme rigel
"colorscheme jellybeans

" =========---------  TABS  ---------=========
set tabstop=2        " 4 whitespaces for tabs visual presentation
set shiftwidth=2     " shift lines by 4 spaces
set smarttab         " set tabs for a shifttabs logic
set expandtab        " expand tabs into spaces
set smartindent


" CDC = Change to Directory of Current file
" command CDC cd %:p:h

" Unsplits long lines copied from terminal
" command Unsplit g/^.\{79}\S$/normal Jx


" Sets the color of the statusbar (airline)
let g:rigel_airline = 1
let g:airline_theme = 'gruvbox'

" Sets the color of the statusbar (lightline)
"let g:rigel_lightline = 1
"let g:lightline = { 'colorsheme': 'rigel' }

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'


set rtp^=/usr/share/vimpager

let vim_markdown_preview_github=1
let vim_markdown_preview_use_xdg_open=1
let vim_markdown_preview_browser='Google Chrome'

" Startify config optoins
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
let g:startify_change_to_dir = 1
 let g:ascii = [
  \ ' _____  ___    _______    ______  ___      ___  __     ___      ___ ',
  \ '(\"   \|"  \  /"     "|  /    " \|"  \    /"  ||" \   |"  \    /"  |',
  \ '|.\\   \    |(: ______) // ____  \\   \  //  / ||  |   \   \  //   |',
  \ '|: \.   \\  | \/    |  /  /    ) :)\\  \/. ./  |:  |   /\\  \/.    |',
  \ '|.  \    \. | // ___)_(: (____/ //  \.    //   |.  |  |: \.        |',
  \ '|    \    \ |(:      "|\        /    \\   /    /\  |\ |.  \    /:  |',
  \ ' \___|\____\) \_______) \"_____/      \__/    (__\_|_)|___|\__/|___|',
  \ ''
  \]

" _ _ _       _    _                              _
" | | | | _ _ <_> _| |_ ___  ___  _ _  ___  _ _  _| |
" | | | || '_>| |  | | / ._>/ . || | |<_> || '_>/ . |
" |__/_/ |_|  |_|  |_| \___.\_. |`___|<___||_|  \___|
"
"
"eeeeeee..eeeeee..eeeeee..eee....eee.eee.eee......eee.
"@@@@@@@@:@@@@@@:@@@@@@@@:@@@::::@@@:@@@:@@@@::::@@@@:
"%%%--%%%-%%%----%%%--%%%-%%%----%%%-%%%-%%%%%--%%%%%-
"&&&++&&&+&&&&&++&&&++&&&+&&&++++&&&+&&&+&&&&&&&&&&&&+
"|||**|||*|||||**|||**|||**|||**|||**|||*|||*||||*|||*
"!!!==!!!=!!!====!!!==!!!===!!!!!!===!!!=!!!==!!==!!!=
":::##:::#::::::#::::::::####::::####:::#:::######:::#
"...@@...@......@@......@@@@@@..@@@@@...@...@@@@@@...@



let g:startify_custom_header =
    \ 'startify#pad(g:ascii + startify#fortune#boxed())'

set showcmd

" =========---------  MerdTREE Settings  ---------=========

noremap <Leader>f :NERDTreeToggle<CR>
noremap <silent> <Leader>v :NERDTreeFind<CR>
" Automatically close NerdTree when you open a file
let NERDTreeQuitOnOpen = 1
" autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTreeType”) && b:NERDTreeType == “primary”) | q | endif
" Automatically delete the buffer of the file you just deleted with NerdTree
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeSortHiddenFirst = 1
let NERDTreeShowHidden = 1

let NERDTreeCustomOpenArgs = {'file':{'where': 't'}, 'dir':{'where':'t'}}



" To use fzf in Vim, add the following line to your .vimrc:
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf

" FIX CLIPBOARD IN NEOVIM
set clipboard+=unnamedplus

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" =========---------  Tableize Settings ---------=========
" the following function toggles TableMode when typing || in insert mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

let g:table_mode_corner='|'
let g:table_mode_align_char = ':'
let g:table_mode_delimiter = ','

noremap <Leader>tm :TableModeToggle<Enter>
noremap <Leader>tr :TableModeRealign<Enter>
noremap <Leader>tt :Tabelize
noremap <Leader>tdd g:table_mode_delete_row_map
noremap <Leader>tdc g:table_mode_delete_column_map
noremap <Leader>tic g:table_mode_insert_column_after_map

" =========---------  Markdown Preview Config ---------=========

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = 'c:\users\chadb\dotfiles\markdown_styles\github-markdown.css'

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" Get Syntax Color
function! GetSyntaxID()
    return synID(line('.'), col('.'), 1)
endfunction

function! GetSyntaxParentID()
    return synIDtrans(GetSyntaxID())
endfunction

function! GetSyntax()
    echo synIDattr(GetSyntaxID(), 'name')
    exec "hi ".synIDattr(GetSyntaxParentID(), 'name')
endfunction

" =========---------  VimWiki Settings ---------=========
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0

" =========---------  vim-ranger settings --------=========
"let g:NERDTreeHijackNetrw = 0 " dd this line if you use NERDTree
"let g:ranger_replace_netrw = 1 " open ranger when vim open a directory

" =========---------  Gundo Settings --------=========
nnoremap <F5> :GundoToggle<CR>
let g:gundo_prefer_python3 = 1

