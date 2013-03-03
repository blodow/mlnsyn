" Vim syntax file
" Language: MLN model files (alchemy?)
" Maintainer: Nico Blodow
" Latest Revision: 1 March 2013

if exists("b:current_syntax")
  finish
endif

" Integer with - + or nothing in front
syn match mlnNumber '\d\+'
syn match mlnNumber '[-+]\d\+'
" Floating point number with decimal no E or e (+,-)
syn match mlnNumber '\d\+\.\d*'
syn match mlnNumber '[-+]\d\+\.\d*'
" Floating point like number with E and no decimal point (+,-)
syn match mlnNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match mlnNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'
" Floating point like number with E and decimal point (+,-)
syn match mlnNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match mlnNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

" simple atoms names: starts with [A-Za-z_] (\h) and followed by 0 or more [A-Za-z_0-9]  (\w)
syn match mlnAtom '\h\w*'
" preds are followed by "("
syn match mlnPredicateName '\h\w*\ze('
" domains are followed by "={"
syn match mlnDomainName '\h\w*\ze={'

" TODO's and comments
syn keyword mlnTodo contained TODO FIXME XXX NOTE
syn region mlnCommentBlock start="/\*" end="\*/" fold contains=mlnTodo
syn match mlnComment "//.*$" contains=mlnTodo

" operators
syn keyword mlnOperator EXIST Exist exist
syn keyword mlnOperator FORALL Forall forall
" ^ v => <=> =
syn match mlnOperator "\^\|v\|=>\|<=>\|="
" * ! +
syn match mlnOperator "\*\|!\|+"

let b:current_syntax = "mln"

" link match groups to actual color classes
hi def link mlnTodo           Todo
hi def link mlnNumber         Number
hi def link mlnAtom           Identifier
hi def link mlnCommentBlock   Comment
hi def link mlnComment        Comment

hi def link mlnOperator       Special
hi def link mlnDomainName     Type
hi def link mlnPredicateName  Statement

