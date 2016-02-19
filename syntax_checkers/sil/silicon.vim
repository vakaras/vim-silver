if exists('g:loaded_syntastic_sil_silicon_checker')
  finish
endif
let g:loaded_syntastic_sil_silicon_checker = 1

if exists('g:syntastic_extra_filetypes')
    call add(g:syntastic_extra_filetypes, 'sil')
else
    let g:syntastic_extra_filetypes = ['sil']
endif

function! SyntaxCheckers_sil_silicon_GetLocList() dict
    let makeprg = self.makeprgBuild({
          \ 'args_before': '--useNailgun --ideMode' })
    "let errorformat = '%[a-zA-z\]\,%l:%c\,%s\,%m'
    let errorformat = '%.%#\,%l:%c\,%.%#\,%m'
    return SyntasticMake({
          \ 'makeprg': makeprg,
          \ 'errorformat': errorformat,
          \ 'returns': [0, 1],
          \ 'defaults': { 'bufnr': bufnr('') } })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
            \ 'filetype': 'sil',
            \ 'name': 'silicon',
            \ 'exec': 'silicon' })
