" Vim syntax file for Godot gdscript
" Language:     gdscript
" Maintainer:   Maxim Kim <habamax@gmail.com>
" Filenames:    *.gd

if exists("b:current_syntax")
	finish
endif

syn keyword gdscriptKeyword false null true
syn keyword gdscriptKeyword static const enum var signal
syn keyword gdscriptKeyword class func nextgroup=gdscriptFunction skipwhite
syn keyword gdscriptKeyword extends setget self return yield class_name
syn keyword gdscriptKeyword tool onready export preload
syn keyword gdscriptKeyword breakpoint assert
syn keyword gdscriptKeyword remote master puppet remotesync mastersync puppetsync
syn keyword gdscriptConditional if else elif match
syn keyword gdscriptRepeat for while break continue
syn keyword gdscriptOperator is as not and or
syn keyword gdscriptConstant PI TAU INF NAN


syn match gdscriptFunction "\h\w*" display contained

syn match gdscriptComment "#.*$" contains=@Spell

syn region gdscriptString matchgroup=gdscriptQuotes
      \ start=+[uU]\=\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
      \ contains=pythonEscape,@Spell

syn region gdscriptString matchgroup=gdscriptTripleQuotes
      \ start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend
      \ contains=pythonEscape,@Spell

syn match gdscriptEscape +\\[abfnrtv'"\\]+ contained
syn match gdscriptEscape "\\$"


hi def link gdscriptKeyword Statement
hi def link gdscriptConditional Conditional
hi def link gdscriptRepeat Repeat
hi def link gdscriptOperator Operator
hi def link gdscriptConstant Constant
hi def link gdscriptFunction Function
hi def link gdscriptComment Comment
hi def link gdscriptString String
hi def link gdscriptQuotes String
hi def link gdscriptTripleQuotes String
hi def link gdscriptEscape Special


let b:current_syntax = "gdscript"
