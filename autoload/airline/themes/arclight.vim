
" Arclight theme for vim-airline
" Based on the vim-airline-themes 'deus'

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
let s:NormalAZ = [ '#00005f' , '#d7ff00' , 17  , 190 ] " FG 235 / BG 114
let s:NormalBY = [ '#d1d9e8' , '#444444' , 7   , 238 ]
let s:NormalCX = [ '#5fffaf' , '#050a14' , 85  , 0   ]

" Insert Mode Colours
" - Mode/Section --- FG-GUI ---- BG-GUI -- FG -- BG --
let s:InsertAZ = [ '#00005f' , '#d7ff00' , 235 , 39  ]
let s:InsertBY = [ '#d1d9e8' , '#444444' , 7   , 238 ]
let s:InsertCX = [ '#9cffd3' , '#050a14' , 39  , 0   ]

" Visual Mode Colours
" - Mode/Section --- FG-GUI ---- BG-GUI -- FG -- BG --
let s:VisualAZ = [ '#00005f' , '#d7ff00' , 235 , 170 ]
let s:VisualBY = [ '#d1d9e8' , '#444444' , 7   , 238 ]
let s:VisualCX = [ '#9cffd3' , '#050a14' , 170 , 0   ]

" Replace Mode Colours
" - Mode/Section ---- FG-GUI ---- BG-GUI -- FG -- BG --
let s:ReplaceAZ = [ '#00005f' , '#d7ff00' , 235 , 204 ]
let s:ReplaceBY = [ '#d1d9e8' , '#444444' , 7   , 238 ]
let s:ReplaceCX = [ '#9cffd3' , '#050a14' , 204 , 0   ]

" Inactive Mode Colours
" - Mode/Section ----- FG-GUI ---- BG-GUI -- FG -- BG --
let s:InactiveAZ = [ '#00005f' , '#d7ff00' , 235 , 145 ]
let s:InactiveBY = [ '#d1d9e8' , '#444444' , 145 , 236 ]
let s:InactiveCX = [ '#9cffd3' , '#050a14' , 7   , 238 ]

" Generate Colour Palette
let g:airline#themes#arclight#palette          = {}
let g:airline#themes#arclight#palette.normal   = airline#themes#generate_color_map(s:NormalAZ, s:NormalBY, s:NormalCX)
let g:airline#themes#arclight#palette.insert   = airline#themes#generate_color_map(s:InsertAZ, s:InsertBY, s:InsertCX)
let g:airline#themes#arclight#palette.visual   = airline#themes#generate_color_map(s:VisualAZ, s:VisualBY, s:VisualCX)
let g:airline#themes#arclight#palette.replace  = airline#themes#generate_color_map(s:ReplaceAZ, s:ReplaceBY, s:ReplaceCX)
let g:airline#themes#arclight#palette.inactive = airline#themes#generate_color_map(s:InactiveAZ, s:InactiveBY, s:InactiveCX)

" Highlight Filename With Modified Buffer
let g:airline#themes#arclight#palette.normal_modified  = { 'airline_c': [ '#ffffff' , '#5f005f' , 255 , 53  ] }
