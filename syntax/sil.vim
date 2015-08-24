" Vim syntax file
" Language: Silver
" Maintainer: Vytautas Astrauskas
" Latest Revision: 22 August 2015

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "sil"

syntax keyword silverFunction function method predicate
syntax keyword silverTypeDef field
syntax keyword silverConditional if else
syntax keyword silverRepeat while
syntax keyword silverStatement assert assume inhale exhale fold unfold
syntax keyword silverKeyword var new
syntax keyword silverType Int Ref Bool Seq Set Perm
syntax keyword silverLogic invariant requires ensures
syntax keyword silverOperator forall exists old fresh acc unfolding in
syntax keyword silverPermission none write
syntax keyword silverBoolean true false

syntax region silverCodeBlock start="{" end="}" fold transparent
syntax region silverComment start="/\*" end="\*/" fold
syntax region silverComment start="//" end="\n" fold

syntax match silverNumber /\d\+\>/
syntax match silverIdentifier /\<\w\+\>/

syntax match silverOperator "==>"
syntax match silverOperator "<==>"
syntax match silverOperator ":="

highlight link silverFunction Function
highlight link silverTypeDef Typedef
highlight link silverConditional Conditional
highlight link silverRepeat Repeat
highlight link silverStatement Statement
highlight link silverKeyword Keyword
highlight link silverType Type
highlight link silverLogic Debug
highlight link silverOperator Operator
highlight link silverPermission Boolean
highlight link silverBoolean Boolean
highlight link silverComment Comment
highlight link silverNumber Number
