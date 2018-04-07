
" Arclight theme for vim-airline

"   ██╗   ██╗██╗███╗   ███╗       █████╗ ██████╗  ██████╗██╗     ██╗ ██████╗ ██╗  ██╗████████╗
"   ██║   ██║██║████╗ ████║      ██╔══██╗██╔══██╗██╔════╝██║     ██║██╔════╝ ██║  ██║╚══██╔══╝
"   ██║   ██║██║██╔████╔██║█████╗███████║██████╔╝██║     ██║     ██║██║  ███╗███████║   ██║
"   ╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██╔══██║██╔══██╗██║     ██║     ██║██║   ██║██╔══██║   ██║
"    ╚████╔╝ ██║██║ ╚═╝ ██║      ██║  ██║██║  ██║╚██████╗███████╗██║╚██████╔╝██║  ██║   ██║
"     ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝

" Author: Chris-1101
" https://github.com/Chris-1101/vim-arclight
scriptencoding utf-8

" Normal Mode Colours
" - Mode/Section --- FG-GUI ---- BG-GUI -- FG -- BG --
let s:NormalAZ = [ '#00005f' , '#d7ff00' , 17  , 190 ]
let s:NormalBY = [ '#d1d9e8' , '#444444' , 7   , 238 ]
let s:NormalCX = [ '#5fffaf' , '#050a14' , 85  , 0   ]

" Insert Mode Colours
" - Mode/Section --- FG-GUI ---- BG-GUI -- FG -- BG --
let s:InsertAZ = [ '#262626' , '#00afff' , 235 , 39  ]
let s:InsertBY = [ '#d1d9e8' , '#444444' , 7   , 238 ]
let s:InsertCX = [ '#00afff' , '#050a14' , 39  , 0   ]

" Visual Mode Colours
" - Mode/Section --- FG-GUI ---- BG-GUI -- FG -- BG --
let s:VisualAZ = [ '#262626' , '#ffd700' , 235 , 220 ]
let s:VisualBY = [ '#d1d9e8' , '#444444' , 7   , 238 ]
let s:VisualCX = [ '#ffd700' , '#050a14' , 220 , 0   ]

" Replace Mode Colours
" - Mode/Section ---- FG-GUI ---- BG-GUI -- FG -- BG --
let s:ReplaceAZ = [ '#262626' , '#ff5f5f' , 235 , 203 ]
let s:ReplaceBY = [ '#d1d9e8' , '#444444' , 7   , 238 ]
let s:ReplaceCX = [ '#ff5f5f' , '#050a14' , 203 , 0   ]

" Inactive Mode Colours
" - Mode/Section ----- FG-GUI ---- BG-GUI -- FG -- BG --
let s:InactiveAZ = [ '#262626' , '#afafaf' , 235 , 145 ]
let s:InactiveBY = [ '#afafaf' , '#303030' , 145 , 236 ]
let s:InactiveCX = [ '#d1d9e8' , '#444444' , 7   , 238 ]

" Generate Colour Palette
let g:airline#themes#arclight#palette          = {}
let g:airline#themes#arclight#palette.normal   = airline#themes#generate_color_map(s:NormalAZ, s:NormalBY, s:NormalCX)
let g:airline#themes#arclight#palette.insert   = airline#themes#generate_color_map(s:InsertAZ, s:InsertBY, s:InsertCX)
let g:airline#themes#arclight#palette.visual   = airline#themes#generate_color_map(s:VisualAZ, s:VisualBY, s:VisualCX)
let g:airline#themes#arclight#palette.replace  = airline#themes#generate_color_map(s:ReplaceAZ, s:ReplaceBY, s:ReplaceCX)
let g:airline#themes#arclight#palette.inactive = airline#themes#generate_color_map(s:InactiveAZ, s:InactiveBY, s:InactiveCX)

" Highlight Filename With Modified Buffer
let s:highlight = airline#themes#get_highlight('vimCommand')
let g:airline#themes#arclight#palette.normal_modified  = { 'airline_c': [ s:highlight[0] , '#050a14' , s:highlight[2] , 0  ] }
let g:airline#themes#arclight#palette.insert_modified  = copy(g:airline#themes#arclight#palette.normal_modified)
let g:airline#themes#arclight#palette.visual_modified  = copy(g:airline#themes#arclight#palette.normal_modified)
let g:airline#themes#arclight#palette.replace_modified = copy(g:airline#themes#arclight#palette.normal_modified)
