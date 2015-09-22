syn match quotedDeletion "^[-].*$" 
syn match quotedAddition "^[+].*$" 
syn match position "^[@][@].*$"
syn match diff_file "^diff [-]r.*$"


hi quotedDeletion ctermfg=red
hi quotedAddition ctermfg=green
hi position ctermfg=191
hi diff_file ctermfg=lightblue
