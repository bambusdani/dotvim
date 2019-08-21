if exists("b:current_syntax")
  finish
endif

setlocal commentstring=#%s

syntax match i3blocksComment '\v^#.*$'
"syntax match i3blocksComment '\v#.*$'
highlight link i3blocksComment Comment 

syntax region i3blocksBlockletRegion start='^\[' end='\]'
highlight link i3blocksBlockletRegion Identifier

"syntax match i3blocksBlocklet '^\[.+\]'
"highlight link i3blocksBlocklet Function

"syntax match optionAssign '='

syntax keyword i3blocksOption align 
      \ background
      \ border
      \ color
      \ command
      \ format
      \ full_text
      \ instance
      \ interval
      \ label 
      \ markup
      \ min_width
      \ name
      \ separator
      \ separator_block_width
      \ short_text
      \ signal
      \ urgent
highlight link i3blocksOption Keyword

syntax keyword i3blocksVariable BLOCK_NAME 
      \ BLOCK_INSTANCE 
      \ BLOCK_BUTTON 
      \ BLOCK_X BLOCK_Y
"highlight link i3blocksVariable Constant
highlight link i3blocksVariable Special

"syntax match i3blocksDollarVariable '\$' nextgroup=i3blocksVariable 
syntax match i3blocksDollarVariable '\v\$\w+' contains=i3blocksVariable 
highlight link i3blocksDollarVariable Constant


let b:current_syntax = "i3blocks"
