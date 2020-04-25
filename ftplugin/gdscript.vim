" Vim filetype plugin file
" Language:	gdscript (Godot game engine)
" Maintainer: Maxim Kim <habamax@gmail.com>

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1
let s:keepcpo = &cpo
set cpo&vim

let b:undo_ftplugin = 'setlocal cinkeys<'
      \ . '|setlocal indentkeys<'
      \ . '|setlocal commentstring<'
      \ . '|setlocal suffixesadd<'
      \ . '|setlocal expandtab<'
      \ . '|setlocal foldexpr<'
      \ . '|setlocal foldignore<'

setlocal cinkeys-=0#
setlocal indentkeys-=0#
setlocal suffixesadd=.gd
setlocal commentstring=#\ %s
setlocal foldignore=
setlocal foldexpr=GDScriptFoldLevel()

func! GDScriptFoldLevel() abort
    let line = getline(v:lnum)
    if line =~? '^\s*$'
        return -1
    endif

    let indent = indent(v:lnum) / &sw
    let indent_next = indent(nextnonblank(v:lnum+1))/&sw

    if indent_next > indent && line =~ ':\s*$'
        return ">" . indent_next
    else
        return indent
    endif

endfunc


let &cpo = s:keepcpo
unlet s:keepcpo
