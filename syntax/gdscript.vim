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
syn keyword gdscriptKeyword remote master puppet remotesync mastersync puppetsync sync
syn keyword gdscriptConditional if else elif match switch case
syn keyword gdscriptRepeat for while break continue
syn keyword gdscriptOperator is as not and or
syn keyword gdscriptConstant PI TAU INF NAN
syn keyword gdscriptType void bool int float
syn keyword gdscriptBuiltinFunction sin cos tan sinh cosh tanh asin acos atan atan2
syn keyword gdscriptBuiltinFunction sqrt fmod fposmod
syn keyword gdscriptBuiltinFunction floor ceil round
syn keyword gdscriptBuiltinFunction abs sign pow log exp is_nan is_inf
syn keyword gdscriptBuiltinFunction ease decimals stepify lerp dectime
syn keyword gdscriptBuiltinFunction randomize randi randf rand_range seed rand_seed
syn keyword gdscriptBuiltinFunction deg2rad rad2deg linear2db db2linear
syn keyword gdscriptBuiltinFunction max min clamp
syn keyword gdscriptBuiltinFunction nearest_po2 weakref funcref convert typeof type_exists
syn keyword gdscriptBuiltinFunction char str var2str str2var var2bytes bytes2var
syn keyword gdscriptBuiltinFunction print prints printt printerr printraw print_stack
syn keyword gdscriptBuiltinFunction range load inst2dict dict2inst hash instance_from_id


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


hi def link gdscriptKeyword Keyword
hi def link gdscriptConditional Conditional
hi def link gdscriptRepeat Repeat
hi def link gdscriptOperator Operator
hi def link gdscriptConstant Constant
hi def link gdscriptFunction Function
hi def link gdscriptBuiltinFunction Function
hi def link gdscriptComment Comment
hi def link gdscriptString String
hi def link gdscriptQuotes String
hi def link gdscriptTripleQuotes String
hi def link gdscriptEscape Special
hi def link gdscriptType Type


let b:current_syntax = "gdscript"
