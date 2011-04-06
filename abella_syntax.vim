" Vim syntax file
" Language   : Abella (http://http://abella.cs.umn.edu)
" Maintainers: Clement Houtmann
" Last Change: 2011 April 6

" most Abella keywords
syn keyword abellaSpecification Specification 
syn match abellaString "\".*\""
syn keyword abellaToplevel Theorem Define CoDefine Import Split Query Set Show Quit Close
syn keyword abellaPreposition by to with on as
syn keyword abellaTactic induction coinduction intros case search apply backchain unfold assert split left right permute inst cut monotone undo clear abbrev unabbref

syn keyword abellaTodo skip abort 

syn keyword abellaType forall exists nabla
syn match abellaType "->"
"syn match abellaKeyword ":="
"syn match abellaKeyword ":-"
syn match abellaType "/\\"
syn match abellaType "\\/"
syn match abellaType "\\/"

syn keyword abellaType o olist prop type kind


" package and import statements
" todo

" comments
syn match abellaTodo "[tT][oO][dD][oO]" contained
syn match abellaLineComment "%.*" contains=abellaTodo
syn region abellaComment start="/\*" end="\*/" contains=abellaTodo

" map Scala groups to standard groups
hi link abellaSpecification Type
hi link abellaString String
hi link abellaToplevel Keyword
hi link abellaTactic Special
hi link abellaType Function
hi link abellaComment Comment
hi link abellaLineComment Comment
hi link abellaTodo Todo

let b:current_syntax = "abella"

