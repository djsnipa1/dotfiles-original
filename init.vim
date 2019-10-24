" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
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
Plug 'freeo/vim-kalisi'
Plug 'rigellute/rigel'
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'


" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
     \ 'do': 'yarn install',
     \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }


" added from neovim install tutorial https://bin.wf/9xxt
" Plug 'roxma/nvim-completion-manager'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

let g:SimplenoteUsername = "chadboyce@gmail.com"
let g:SimplenotePassword = "iwtfch"

"set runtimepath^=~/.vim runtimepath+=~/.vim/after
 "   let &packpath = &runtimepath
"source ~/.vimrc


set background=dark

" syntax highlighting
syntax enable
colorscheme rigel
"colorscheme jellybeans

" CDC = Change to Directory of Current file
command CDC cd %:p:h

" Unsplits long lines copied from terminal
command Unsplit g/^.\{79}\S$/normal Jx


" Sets the color of the statusbar (lightline)
let g:rigel_lightline = 1
let g:lightline = { 'colorsheme': 'rigel' }

" Sets the color of the statusbar (airline)
let g:rigel_airline = 1
let g:airline_theme = 'rigel'


