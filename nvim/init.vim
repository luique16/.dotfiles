let g:mapleader = ' '

call plug#begin(stdpath('config') . '/autoload/plugged')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}                                                 " Treesitter
   	Plug 'neoclide/coc.nvim', {'branch': 'release'}                                                             " Auto completion
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                                                              " Extra syntax and highlight for nerdtree files
	Plug 'vim-airline/vim-airline'                                                                              " Bottom line with info
	Plug 'vim-airline/vim-airline-themes'                                                                       " Themes for vim-airline
	Plug 'preservim/nerdcommenter'                                                                              " Comment on leader-/
    Plug 'mg979/vim-visual-multi'                                                                               " Multi-cursor mode for vim
    Plug 'airblade/vim-rooter'                                                                                  " Rootify the main path
	Plug 'sbdchd/neoformat'                                                                                     " Prettier/Beautify
    Plug 'AndrewRadev/tagalong.vim'                                                                             " Auto change HTML tag
    Plug 'lukas-reineke/indent-blankline.nvim'                                                                  " Indent line
    " Plug 'Exafunction/codeium.vim'                                                                              " Codeium (IA)
    Plug 'nvim-tree/nvim-tree.lua'                                                                              " Nvim tree
    Plug 'nvim-tree/nvim-web-devicons'                                                                          " Nvim tree icons
    Plug 'ThePrimeagen/vim-be-good'                                                                             " Motion training
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                                         " Fzf
    Plug 'junegunn/fzf.vim'                                                                                     " Fzf for vim
    Plug 'ellisonleao/gruvbox.nvim'                                                                             " Gruvbox
    Plug 'datsfilipe/min-theme.nvim'                                                                            " Min theme
    Plug 'rose-pine/neovim'                                                                                     " Rose-pine
    Plug 'github/copilot.vim'                                                                                   " Copilot
    Plug 'jiangmiao/auto-pairs'                                                                                 " Auto indent brackets
    Plug 'nvim-lua/plenary.nvim'                                                                                " Avante dependency
    Plug 'MunifTanjim/nui.nvim'                                                                                 " Avante dependency
    Plug 'MeanderingProgrammer/render-markdown.nvim'                                                            " Avante dependency
    Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }                                               " Avante AI
call plug#end()

source $HOME/.config/nvim/general/keys.vim
source $HOME/.config/nvim/general/settings.vim

source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/fzf.vim
luafile $HOME/.config/nvim/plugins/nvim-tree.lua
luafile $HOME/.config/nvim/plugins/nvim-treesitter.lua
luafile $HOME/.config/nvim/plugins/avante.lua

colorscheme gruvbox

source $HOME/.config/nvim/plugins/gruvbox.vim
"luafile $HOME/.config/nvim/plugins/min-theme.lua
"luafile $HOME/.config/nvim/plugins/rose-pine.lua
