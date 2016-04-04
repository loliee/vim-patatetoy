let s:N1 = [ '#080808' , '#ffe041' , 232 ,   4 ] " blackestgravel & lime
let s:N2 = [ '#f4cf86' , '#3a3a3a' ,   7 , 237 ] " lightgrey    & darkgravel
let s:N3 = [ '#ffe041' , '#3a3a3a' ,   4 , 237 ] " yellow       & darkgravel
let s:N4 = [ '#666462' , 241 ]                   " mediumgravel

let s:I1 = [ '#080808' , '#0a9dff' , 232 ,   3 ] " blackestgravel & tardis
let s:I2 = [ '#f4cf86' , '#005fff' ,   7 , 237 ] " lightgrey      & facebook
let s:I3 = [ '#0a9dff' , '#3a3a3a' ,   3 , 237] " tardis         & darkgravel

let s:V1 = [ '#080808' , '#f1532b' , 232 ,   1 ] " blackestgravel & red
let s:V2 = [ '#080808' , '#fade3e' ,   7 , 237 ] " blackestgravel dalespale
let s:V3 = [ '#f1532b' , '#3a3a3a' ,   1 , 237 ] " red           & darkgravel
let s:V4 = [ '#c7915b' , 173 ]                   " coffee

let s:PA = [ '#f1532b' ,   1 ]                   " red
let s:RE = [ '#ff9eb8' , 211 ]                   " dress
let s:ER = [ '#080808' , '#f1532b' , 232 ,   1 ] " blackestgravel & red
let s:IA = [ s:N3[1] , s:N2[1] , s:N3[3] , s:N2[3] , '' ]

let g:airline#themes#patatetoy#palette = {}

let g:airline#themes#patatetoy#palette.accents = {
      \ 'red': [ '#f1532b' , '' , 1 , '' , '' ]
      \ }

let g:airline#themes#patatetoy#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#patatetoy#palette.normal_modified = {
      \ 'airline_b': [ s:N2[0]   , s:N4[0]   , s:N2[2]   , s:N4[1]   , ''     ] ,
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
let g:airline#themes#patatetoy#palette.normal_paste = {
      \ 'airline_a': [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] }

let g:airline#themes#patatetoy#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#patatetoy#palette.insert_modified = {
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
let g:airline#themes#patatetoy#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] }

let g:airline#themes#patatetoy#palette.replace = copy(airline#themes#patatetoy#palette.insert)
let g:airline#themes#patatetoy#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#patatetoy#palette.replace_modified = g:airline#themes#patatetoy#palette.insert_modified
let g:airline#themes#patatetoy#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#patatetoy#palette.visual_modified = {
      \ 'airline_c': [ s:V3[0]   , s:V4[0]   , s:V3[2]   , s:V4[1]   , ''     ] }

let g:airline#themes#patatetoy#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#patatetoy#palette.inactive_modified = {
      \ 'airline_c': [ s:V1[1]   , ''        , s:V1[3]   , ''        , ''     ] }

" Errors
let g:airline#themes#patatetoy#palette.normal.airline_error = [
     \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
     \ ]

let g:airline#themes#patatetoy#palette.normal_modified.airline_error =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.insert.airline_error =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.insert_modified.airline_error =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.visual.airline_error =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.visual_modified.airline_error =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.replace.airline_error =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.replace_modified.airline_error =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.normal.airline_warning =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.normal_modified.airline_warning =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.insert.airline_warning =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.insert_modified.airline_warning =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.visual.airline_warning =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.visual_modified.airline_error =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.replace.airline_warning =
    \ g:airline#themes#patatetoy#palette.normal.airline_error

let g:airline#themes#patatetoy#palette.replace_modified.airline_warning =
    \ g:airline#themes#patatetoy#palette.normal.airline_error
