" Vim color file - python
" Generated by http://bytefluent.com/vivify 2017-03-13
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "python"

"hi SignColumn -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#000000 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi CursorColumn -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#000000 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
hi WildMenu guifg=#000000 guibg=#7fff00 guisp=#7fff00 gui=bold ctermfg=NONE ctermbg=118 cterm=bold
hi SpecialComment guifg=#ddb100 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi Typedef guifg=#ccab3f guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=179 ctermbg=230 cterm=NONE
hi Title guifg=#e066ff guibg=#f6ffe5 guisp=#f6ffe5 gui=bold ctermfg=171 ctermbg=230 cterm=bold
hi Folded guifg=#b0d0e0 guibg=#305060 guisp=#305060 gui=bold ctermfg=152 ctermbg=23 cterm=bold
hi PreCondit guifg=#a4d3ee guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=153 ctermbg=230 cterm=NONE
hi Include guifg=#725c05 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=3 ctermbg=230 cterm=NONE
hi StatusLineNC guifg=#000000 guibg=#c8d6b3 guisp=#c8d6b3 gui=NONE ctermfg=NONE ctermbg=187 cterm=NONE
hi NonText guifg=#3D5D6D guibg=#123A4A guisp=#123A4A gui=NONE ctermfg=66 ctermbg=23 cterm=NONE
hi DiffText guifg=#000000 guibg=#f6ffe5 guisp=#f6ffe5 gui=bold ctermfg=NONE ctermbg=230 cterm=bold
hi ErrorMsg guifg=#ffffe0 guibg=#b22222 guisp=#b22222 gui=NONE ctermfg=230 ctermbg=124 cterm=NONE
hi Ignore guifg=#204050 guibg=NONE guisp=NONE gui=NONE ctermfg=23 ctermbg=NONE cterm=NONE
hi Debug guifg=#ddb100 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi PMenuSbar guifg=NONE guibg=#395602 guisp=#395602 gui=NONE ctermfg=NONE ctermbg=58 cterm=NONE
hi Identifier guifg=#6f9b1f guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ddb100 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi Conditional guifg=#00ff00 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=10 ctermbg=230 cterm=NONE
hi StorageClass guifg=#ccab3f guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=179 ctermbg=230 cterm=NONE
hi Todo guifg=#969248 guibg=#507080 guisp=#507080 gui=NONE ctermfg=143 ctermbg=66 cterm=NONE
hi Special guifg=#ddb100 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi LineNr guifg=#6f9b1f guibg=#395602 guisp=#395602 gui=bold ctermfg=64 ctermbg=58 cterm=bold
hi StatusLine guifg=#000000 guibg=#c8d6b3 guisp=#c8d6b3 gui=bold ctermfg=NONE ctermbg=187 cterm=bold
hi Label guifg=#ccab3f guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#000000 guibg=#c8d6b3 guisp=#c8d6b3 gui=NONE ctermfg=NONE ctermbg=187 cterm=NONE
hi Search guifg=NONE guibg=#607b8b guisp=#607b8b gui=NONE ctermfg=NONE ctermbg=66 cterm=NONE
hi Delimiter guifg=#ddb100 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi Statement guifg=#669907 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Comment guifg=#507080 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Character guifg=#000000 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
hi Float guifg=#969248 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=143 ctermbg=230 cterm=NONE
hi Number guifg=#969248 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=143 ctermbg=230 cterm=NONE
hi Boolean guifg=#969248 guibg=#f6ffe5 guisp=#f6ffe5 gui=bold ctermfg=143 ctermbg=230 cterm=bold
hi Operator guifg=#7fff00 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=118 ctermbg=230 cterm=NONE
hi Question guifg=#4eee94 guibg=#f6ffe5 guisp=#f6ffe5 gui=bold ctermfg=85 ctermbg=230 cterm=bold
hi WarningMsg guifg=#ff3030 guibg=#f6ffe5 guisp=#f6ffe5 gui=bold ctermfg=13 ctermbg=230 cterm=bold
hi VisualNOS guifg=#000000 guibg=#f6ffe5 guisp=#f6ffe5 gui=bold,underline ctermfg=NONE ctermbg=230 cterm=bold,underline
hi DiffDelete guifg=#000000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi ModeMsg guifg=#00ff00 guibg=#006400 guisp=#006400 gui=NONE ctermfg=10 ctermbg=22 cterm=NONE
hi Define guifg=#725c05 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=3 ctermbg=230 cterm=NONE
hi Function guifg=#775d05 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=3 ctermbg=230 cterm=NONE
hi FoldColumn guifg=#6f9b1f guibg=#395602 guisp=#395602 gui=bold ctermfg=64 ctermbg=58 cterm=bold
hi PreProc guifg=#87ceff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Visual guifg=#2e8b57 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=29 ctermbg=15 cterm=NONE
hi MoreMsg guifg=#2e8b57 guibg=#f6ffe5 guisp=#f6ffe5 gui=bold ctermfg=29 ctermbg=230 cterm=bold
hi VertSplit guifg=#000000 guibg=#c8d6b3 guisp=#c8d6b3 gui=NONE ctermfg=NONE ctermbg=187 cterm=NONE
hi Exception guifg=#00ff00 guibg=#f6ffe5 guisp=#f6ffe5 gui=bold ctermfg=10 ctermbg=230 cterm=bold
hi Keyword guifg=#6f9b1f guibg=#f6ffe5 guisp=#f6ffe5 gui=bold ctermfg=64 ctermbg=230 cterm=bold
hi Type guifg=#ccab3f guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#000000 guibg=#008b00 guisp=#008b00 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi Cursor guifg=#ffffff guibg=#7ccd7c guisp=#7ccd7c gui=NONE ctermfg=15 ctermbg=114 cterm=NONE
hi Error guifg=#ffffe0 guibg=#b22222 guisp=#b22222 gui=NONE ctermfg=230 ctermbg=124 cterm=NONE
hi PMenu guifg=#000000 guibg=#c8d6b3 guisp=#c8d6b3 gui=NONE ctermfg=NONE ctermbg=187 cterm=NONE
hi SpecialKey guifg=#324262 guibg=#103040 guisp=#103040 gui=NONE ctermfg=60 ctermbg=23 cterm=NONE
hi Constant guifg=#000000 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
hi Tag guifg=#ddb100 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi String guifg=#ccab3f guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=179 ctermbg=230 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#6f9b1f guisp=#6f9b1f gui=NONE ctermfg=NONE ctermbg=64 cterm=NONE
hi Repeat guifg=#4eee94 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=85 ctermbg=230 cterm=NONE
hi Directory guifg=#20b2aa guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=37 ctermbg=230 cterm=NONE
hi Structure guifg=#ccab3f guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=179 ctermbg=230 cterm=NONE
hi Macro guifg=#486610 guibg=#f6ffe5 guisp=#f6ffe5 gui=NONE ctermfg=58 ctermbg=230 cterm=NONE
hi Underlined guifg=#838b83 guibg=#f6ffe5 guisp=#f6ffe5 gui=underline ctermfg=65 ctermbg=230 cterm=underline
hi DiffAdd guifg=#000000 guibg=#008b8b guisp=#008b8b gui=NONE ctermfg=NONE ctermbg=30 cterm=NONE
hi cursorim guifg=#ffffff guibg=#96cdcd guisp=#96cdcd gui=bold ctermfg=15 ctermbg=152 cterm=bold