set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'neowit/vim-force.com'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'alvan/vim-closetag'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'edkolev/tmuxline.vim'
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter'
call vundle#end()
let g:closetag_filenames='*.html,*.xml,*.cmp'
let g:airline_theme='gruvbox'
let g:apex_tooling_force_dot_com_path='/home/christian/.force/tooling.jar'
let g:apex_backup_folder='/home/christian/.force/bak'
let g:apex_temp_folder='/home/christian/.force/tmp'
let g:apex_properties_folder='/home/christian/.force/properties'
let g:apex_workspace_path='/home/christian/eclipse-workspace'
let g:airline_powerline_fonts=1
let NERDTreeShowHidden=1
let g:gruvbox_invert_selection=0
let g:gruvbox_italic=1
set backupdir=~/.vim/backup
set directory=~/.vim/swp
set mouse=a number noshowmode tabstop=2 shiftwidth=2 expandtab background=dark autoindent backspace=indent,start,eol cursorline ignorecase relativenumber scrolloff=3
map <C-p> :NERDTreeToggle<CR>
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
colo gruvbox
filetype plugin indent on
syntax on
autocmd BufWritePre * %s/\s\+$//e
map  :w:ApexSaveOne
