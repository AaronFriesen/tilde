syn clear javaError
syn match javaError "<<<\|\.\.\|=>\|||=\|&&=\|\*\/"
syn clear javaFuncDef
syn match javaFuncDef "->"
syn match javaVarArg  "\.\.\."
syn match keyword '\<[A-Z]\+\w*'
hi link keyword Identifier
