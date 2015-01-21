set noesckeys " causes a delay when using ctrl + [
set relativenumber " line numbers are relative
set number " current line number is absolute (after relativenumber)
set hlsearch " highlight search results
set incsearch " highlight search results while typing

" disable search highlight on enter
:nnoremap <CR> :nohlsearch<cr>

let g:ctrlp_max_height = 25
let g:ctrlp_working_path_mode = 0 " ctrlp tries to be too smart

colorscheme railscasts256

let g:rspec_command = "!clear; bundle exec rspec --format documentation {spec}"

nnoremap Q <nop>
