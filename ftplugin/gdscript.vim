" Vim filetype plugin file
" Language:	gdscript (Godot game engine)
" Maintainer: Maxim Kim <habamax@gmail.com>

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1
let s:keepcpo= &cpo
set cpo&vim

let b:undo_ftplugin = 'setlocal cinkeys<'
      \ . '|setlocal indentkeys<'
      \ . '|setlocal commentstring<'
      \ . '|setlocal suffixesadd<'
      \ . '|setlocal expandtab<'
      \ . '|setlocal foldexpr<'

setlocal cinkeys-=0#
setlocal indentkeys-=0#
setlocal suffixesadd=.gd
setlocal commentstring=#\ %s


let &cpo = s:keepcpo
unlet s:keepcpo
