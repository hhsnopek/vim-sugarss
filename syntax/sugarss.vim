if exists("b:current_syntax")
  finish
endif

" Comments
sy match sssCommentLine /\(\/\/\).*$/
sy region sssCommentBlock start="/\*" end="\*/" contains=ALL
hi link sssCommentLine Comment
hi link sssCommentBlock Comment

" html element
sy keyword sssElement a abbr address area article aside audio b base bdi bdo
sy keyword sssElement blockquote body br button canvas caption cite code col
sy keyword sssElement colgroup command datalist dd del details dfn div dl dt em
sy keyword sssElement embed fieldset figcaption figure footer form h1 h2 h3 h4
sy keyword sssElement h5 h6 head header hgroup hr html i iframe img input ins
sy keyword sssElement kbd keygen label legend li link map mark menu meta meter
sy keyword sssElement nav noscript object ol optgroup option output p param pre
sy keyword sssElement progress q rp rt ruby s samp script section select small
sy keyword sssElement source span strong style sub summary sup table tbody td
sy keyword sssElement textarea tfoot th thead time title tr track u ul var video
sy keyword sssElement wbr
hi link sssElement Constant

" class
sy match sssClass /\(\.\)\a\+/
hi link sssClass Identifier

" id
sy match sssID /\(\#\)\a\+/
hi link sssID Identifier

" selector
sy match sssSelector /\(@\)\a\+/
hi link sssSelector Keyword

" Property
sy match sssProperty /(\@!\S*\(\:\s\)\@=/
sy match sssPropertyOverride /\:/
hi link sssProperty Constant
hi link sssPropertyOverride Normal

" Measurement
sy match sssUnit /\(em\|ex\|ex\|ch\|rem\)/
sy match sssViewport /\(vh\|vw\|vmin\|vmax\)/
sy match sssAbsoluteUnit /\(px\|mm\|cm\|in\|pt\|pc\)/
hi link sssUnit Number
hi link sssViewport Number
hi link sssAbsoluteUnit Number

" pseudo classes
sy match sssPseudoClass /\(\:\)\@<=\S*\((\|\,\)\@=/
hi link sssPseudoClass Constant

let b:current_syntax = "sss"
