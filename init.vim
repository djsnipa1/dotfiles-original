" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

Plug 'tpope/vim-sensible'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'brooth/far.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'whiteinge/diffconflicts'
Plug 'mrtazz/simplenote.vim'
Plug 'dbeniamine/cheat.sh-vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
Plug 'wincent/command-t'
Plug '~/.local/share/nvim/plugged/csapprox'
Plug 'mhinz/vim-startify'
Plug 'freeo/vim-salisi'
Plug 'rigellute/rigel'
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'rkitover/vimpager'
Plug 'ofavre/vimcat'
"Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig'
Plug 'morhetz/gruvbox'
Plug 'sjl/gundo.vim'
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

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
     \ 'do': 'yarn install',
     \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }


" added from neovim install tutorial https://bin.wf/9xxt
" Plug 'roxma/nvim-completion-manager'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" On-demand loading
Plug 'mbbill/undotree', { 'on': 'UndoTreeToggle' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
call plug#end()


" ==========  VISUAL SETTINGS  ==========
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


" =========---------  VISUAL SETTINGS  ---------=========
set termguicolors    " sets terminal to true colors (I think)
syntax enable 
" set t_Co=256         " Use 256 colours (Use this setting only if your terminal supports 256 colours)
set background=dark


" colorscheme gruvbox
colorscheme rigel
"colorscheme jellybeans

" =========---------  TABS  ---------=========
set tabstop=2        " 4 whitespaces for tabs visual presentation
set shiftwidth=2     " shift lines by 4 spaces
set smarttab         " set tabs for a shifttabs logic
set expandtab        " expand tabs into spaces
set smartindent


" CDC = Change to Directory of Current file
command CDC cd %:p:h

" Unsplits long lines copied from terminal
command Unsplit g/^.\{79}\S$/normal Jx


" Sets the color of the statusbar (airline)
let g:rigel_airline = 1
let g:airline_theme = 'rigel'

" Sets the color of the statusbar (lightline)
let g:rigel_lightline = 1
let g:lightline = { 'colorsheme': 'rigel' }

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
:let mapleader = ","

" =========---------  MerdTREE Settings  ---------=========

noremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" Automatically close NerdTree when you open a file
let NERDTreeQuitOnOpen = 1
" automatically close a tab if the only remaining window is NerdTree (also
" taken from the Readme)
" autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTreeType”) && b:NERDTreeType == “primary”) | q | endif
" Automatically delete the buffer of the file you just deleted with NerdTree
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1

