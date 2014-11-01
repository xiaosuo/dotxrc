" Vim syntax file

if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "todo"

syn region todoDone start=/^x[ \t]/ end=/^[^ \t]/he=s-1,me=s-1
syn region todoBug start=/^b[ \t]/ end=/^[^ \t]/he=s-1,me=s-1
syn region todoFeature start=/^f[ \t]/ end=/^[^ \t]/he=s-1,me=s-1
syn region todoTask start=/^t[ \t]/ end=/^[^ \t]/he=s-1,me=s-1

hi def link todoDone Comment
hi def link todoBug Error
hi def link todoFeature Todo 
hi def link todoTask Underlined

" vim: sts=2 sw=2 et
