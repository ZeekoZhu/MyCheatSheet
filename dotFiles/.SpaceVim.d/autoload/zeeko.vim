func! zeeko#before() abort
  " map leader
  let g:mapleader = ","

  let g:nvim_typescript#type_info_on_hold = 1
  let g:vimfiler_tree_opened_icon = '-'
  let g:vimfiler_tree_closed_icon = '+'
  set shiftwidth=4
  set expandtab

  set list listchars=tab:>-,trail:·
  set list

  " Sample configuration for dictionary source with multiple
  " dictionary files.
  setlocal dictionary+=/usr/share/dict/words
  setlocal dictionary+=/usr/share/dict/american-english
  " Remove this if you'd like to use fuzzy search
  call deoplete#custom#source(
  \ 'dictionary', 'matchers', ['matcher_head'])
  " If dictionary is already sorted, no need to sort it again.
  call deoplete#custom#source(
  \ 'dictionary', 'sorters', [])
  " Do not complete too short words
  call deoplete#custom#source(
  \ 'dictionary', 'min_pattern_length', 3)
endfunction

func! zeeko#after() abort
  autocmd Filetype json let g:indentLine_setConceal = 0
  autocmd FileType gitcommit let b:did_indent = 1
  autocmd InsertEnter *.json setlocal concealcursor=
  autocmd InsertLeave *.json setlocal concealcursor=inc
endf


