func! zeeko#before() abort
  " map leader
  let g:mapleader = ","

  let g:nvim_typescript#type_info_on_hold = 1

  set shiftwidth=4

  set list listchars=tab:>-,trail:·
  set list

endfunction


