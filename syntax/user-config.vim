" Vim syntax file
" (last defined pattern has higher priority)

syntax clear

syn case ignore

com! -nargs=+ HiLink hi def link <args>

syn keyword ucProvisionDirective contained containedin=ucDirective INSTALL COPY SYMLINK WEB GIT LINE SH BASH DIR FILE
syn keyword ucMetaDirective contained containedin=ucDirective BASE BIN
syn keyword ucExecDirective contained containedin=ucDirective INCLUDE AGE ENV ENV-SH

syn keyword ucInstaller containedin=ucParam apt brew pip opkg *

syn match ucParam "[^\ ]\+" contained contains=ucInstaller,ucVar
syn match ucDecorator '[*?]' contained
syn match ucVar "\$[A-Za-z_]\+" contained
syn match ucDirective "^ *[A-Za-z-]\+[*?]*\ " containedin=ucFileDirective
syn match ucTag "@[A-Za-z\._-]\+"
syn match ucGroup "[{}]"
"syn region ucGroupBlock start="{" end="}" transparent contains=TOP

syn region ucFileDirective start="^ *[A-Za-z-]\+[*?]*\ " end="\n" contains=ucDirective,ucDecorator,ucParam

syn keyword etTodo TODO FIXME XXX NOTE

syn match unixComment "#.\{-}$" contains=etTodo,@Spell

HiLink ucDecorator ucSpecial
"HiLink ucDecorator ucOperator
HiLink ucInstaller Type
HiLink ucVar ucIdentifier

HiLink ucProvisionDirective Statement
HiLink ucExecDirective Statement
HiLink ucMetaDirective Constant
HiLink ucIdentifier Identifier
HiLink ucKeyword Keyword
HiLink ucOperator Operator
HiLink ucSpecialChar SpecialChar
HiLink ucSpecial Special
HiLink ucTag Statement
HiLink ucGroup  SpecialChar

HiLink unixComment Comment

delcommand HiLink

syn case match
