" Vim filetype plugin
" Language:         LessCSS
" Author:           Tim Pope <vimNOSPAM@tpope.org>
" Maintainer:   Leonard Ehrenfried <leonard.ehrenfried@web.de>
" Last Change:  2011 Sep 30

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl cms< def< inc< inex< ofu< sua<"

setlocal iskeyword+=-
setlocal commentstring=//\ %s
setlocal define=^\\s*\\%(@mixin\\\|=\\)
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\\|^\\)\\zs','_','')
setlocal omnifunc=csscomplete#CompleteCSS
setlocal suffixesadd=.less
setlocal comments=s1:/*,mb:*,ex:*/

let &l:include = '^\s*@import\s\+\%(url(\)\=["'']\='

setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2

" vim: et sw=2 sts=2
