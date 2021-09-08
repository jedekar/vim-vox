" Vim syntax file
" Language: Vox
" Latest Revision: 05 September 2021

if exists("b:current syntax")
	finish
endif

syn keyword voxKeywords return enum function alias struct if else while import
syn keyword voxTypes void bool noreturn i8 i16 i32 i64 u8 u16 u32 u64 f32 f64 typeof(null) $alias $type $value
syn match voxComment "//.*$"

syn match voxDecimalInt "\<-\=\(0\|[1-9]_\?\(\d\|\d\+_\?\d\+\)*\)\%([Ee][-+]\=\d\+\)\=\>"
syn match voxHexadecimalInt "\<-\=0[xX]_\?\(\x\+_\?\)\+\>"

syn region voxString start='"' end='"'

syn match voxChar '\'.\''
syn match voxChar '\'\\n\''

syn keyword voxConstants null true false syscall

syn match voxMeta "#version"
syn match voxMeta "#foreach"
syn match voxMeta "#assert"
syn match voxMeta "#if"
syn match voxMetaFunc "$isType"
syn match voxMetaFunc "$isValue"
syn match voxMetaFunc "$isVariable"
syn match voxMetaFunc "$isCode"
syn match voxMetaFunc "$isFunction"
syn match voxMetaFunc "$isStruct"
syn match voxMetaFunc "$isTemplate"
syn match voxMetaFunc "$isTemplateInstance"
syn match voxMetaFunc "$isInstanceOf"
syn match voxMetaFunc "$isEnum"
syn match voxMetaFunc "$isInteger"
syn match voxMetaFunc "$isFloating"
syn match voxMetaFunc "$isSlice"
syn match voxMetaFunc "$isSliceOf"
syn match voxMetaFunc "$baseOf"
syn match voxMetaFunc "$isArray"
syn match voxMetaFunc "$isArrayOf"
syn match voxMetaFunc "$getIdentifier"
syn match voxMetaFunc "$getMembers"
syn match voxMetaFunc "$getStructMembersVariables"
syn match voxMetaFunc "$getStructMembersMethods"

syn match voxAttrib "@extern"

let b:current_syntax = "vox"

hi def link voxKeywords Statement
hi def link voxTypes Type
hi def link voxComment Comment
hi def link voxDecimalInt Constant
hi def link voxHexadecimalInt Constant
hi def link voxString Constant
hi def link voxChar Constant
hi def link voxConstants Constant
hi def link voxMeta Function
hi def link voxMetaFunc Function
hi def link voxAttrib Function
