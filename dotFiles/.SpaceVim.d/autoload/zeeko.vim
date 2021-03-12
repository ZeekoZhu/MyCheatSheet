func! zeeko#before() abort
  " map leader this interesting
  let g:mapleader = ","
  nmap <Bslash> <Plug>(easymotion-prefix)

  set ignorecase
  set smartcase
  let g:nvim_typescript#type_info_on_hold = 1
  let g:vimfiler_tree_opened_icon = '-'
  let g:vimfiler_tree_closed_icon = '+'
  set shiftwidth=4
  set expandtab

  set list listchars=tab:>-,trail:·
  set list

endfunction

func! zeeko#after() abort
  autocmd Filetype json let g:indentLine_setConceal = 0
  autocmd FileType gitcommit let b:did_indent = 1
  autocmd InsertEnter *.json setlocal concealcursor=
  autocmd InsertLeave *.json setlocal concealcursor=inc
endf


