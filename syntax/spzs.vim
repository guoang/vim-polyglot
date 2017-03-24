" vim syntax file
" Language: spzs
" Maintainer: Guo Ang <guoang.sysu@gmail.com>
" Filenames: *.spzs

" quit when a syntax file was already loaded.
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim
setlocal shiftwidth=4

let s:ft = matchstr(&ft, '^\([^.]\)\+')

" type
syn match       spzsType "float\d*\(x\d*\)*"
syn match       spzsType "half\d*\(x\d*\)*"
syn match       spzsType "int\d*\(x\d*\)*"
syn match       spzsType "uint\d*\(x\d*\)*"
syn match       spzsType "double\d*\(x\d*\)*"
syn match       spzsType "bool\d*\(x\d*\)*"
syn keyword     spzsType sampler sampler1d sampler3d samplercube

" precision
syn keyword     spzsPrecision lowp mediump highp

" register
syn keyword     spzsRegister    attribute uniform varying 

" operator
syn match     spzsOperator "[+\-\*/]"

" comment
syn keyword     spzsTodo    contained TODO FIXME XXX
syn match       spzsComment "\[\".*\"\]"
syn region      spzsComment start="//" skip="\\$" end="$" contains=spzsTodo
syn region      spzsComment start="/\*" end="\*/" contains=spzsTodo

" int
syn match	    spzsInt display "\<\d\+\>"
" hex int
syn match       spzsInt display "\<0x\x\+\>"

" float
syn match       spzsFloat display "\<\d\+f\>"
" floating point number, with dot
syn match       spzsFloat display "\<\d\+\.\d*f\?\>"
" floating point number, starting with a dot
syn match       spzsFloat display "\<\.\d\+f\?\>"

" string
syn region      spzsString start="\"" end="\""

" function
syn keyword     spzsFuncBuiltin    abs acos asin atan ceil cos exp exp2 floor fractional length log log2 negative
syn keyword     spzsFuncBuiltin    normalize oneminus rsqrt saturate sign sin sqrt atan2 dot cross fmod min max
syn keyword     spzsFuncBuiltin    pow reflect step lerp clamp refract smoothstep sample samplelod alphatest transform
syn match       spzsFuncCustom     "[a-zA-Z_]\+\w*" contained

" statement
syn keyword     spzsKeyword     out in macro eitheror enum
syn keyword     spzsKeyword     function nextgroup=spzsFuncCustom skipwhite
syn keyword     spzsRepeat      repeat loop
syn keyword     spzsConditional condition
syn keyword     spzsLabel       branch default
syn keyword     spzsOperator    operator

syn keyword     spzsTag         pipeline vertex pixel

syn keyword     spzsSematics    POSITION BLENDWEIGHT NORMAL DIFFUSE SPECULAR EMISSIVE FOG BLENDINDICES TANGENT BINORMAL POSITIONT LIGHTING
syn keyword     spzsSematics    TEXTURE0 TEXTURE1 TEXTURE2 TEXTURE3 TEXTURE4 TEXTURE5 TEXTURE6 TEXTURE7 TEXTURE8 TEXTURE9 TEXTURE10 TEXTURE11 TEXTURE12 TEXTURE13 TEXTURE14 TEXTURE15
syn keyword     spzsSematics    TEXTURE_RAW0 TEXTURE_RAW1 TEXTURE_RAW2 TEXTURE_RAW3 TEXTURE_RAW4 TEXTURE_RAW5 TEXTURE_RAW6 TEXTURE_RAW7 TEXTURE_RAW8 TEXTURE_RAW9 TEXTURE_RAW10 TEXTURE_RAW11 TEXTURE_RAW12 TEXTURE_RAW13 TEXTURE_RAW14 TEXTURE_RAW15
syn keyword     spzsSematics    WORLD_POSITION WORLD_NORMAL WORLD_TANGENT WORLD_BINORMAL WINDOW_POSITION
syn keyword     spzsSematics    ALPHA_MTL ALPHA_REF AMBIENT BLEND_COLOR BONE_MAP_IDX BONE_VEC CAMERA_INFO CAMERA_POSITION CAMERA_RATE CHARACTER_LIGHT_ATTR CURRENT_RENDER_TARGET
syn keyword     spzsSematics    DEFER_AMBIENT DELTA_FRAME_TIME DIFFUSE DIR_LIGHT_ATTR DIRECT_RGB EMISSIVE ENV_REFLECT ENV_SH_BLUE ENV_SH_GREEN ENV_SH_RED ENV_EXPOSURE FOG_COLOR FOG_ENABLE FOG_INFO
syn keyword     spzsSematics    FRAME_TIME GI_BUFFER_SIZE HEIGHT_FOG_DENSITY WIND INV_PROJECTION
syn keyword     spzsSematics    INV_TEXTURE_TRANS0 INV_TEXTURE_TRANS1 INV_TEXTURE_TRANS2 INV_TEXTURE_TRANS3 INV_TEXTURE_TRANS4 INV_TEXTURE_TRANS5 INV_TEXTURE_TRANS6 INV_TEXTURE_TRANS7 INV_TEXTURE_TRANS8 INV_TEXTURE_TRANS9 INV_TEXTURE_TRANS10 INV_TEXTURE_TRANS11 INV_TEXTURE_TRANS12 INV_TEXTURE_TRANS13 INV_TEXTURE_TRANS14 INV_TEXTURE_TRANS15
syn keyword     spzsSematics    INV_VIEW INV_VIEW_PROJECTION INV_WORLD INV_WORLD_VIEW INV_WORLD_VIEW_PROJECTION
syn keyword     spzsSematics    LIGHT_BUFFER LIGHT_BUFFER2 LIGHT_DIRECTION LIGHT_MAP_SCALE LIGHT_NUM LIGHT_POSITION LIGHT_VIEW_PROJ LIGHTMAP_TINT_COLOR LIGHTMAP_TINT_FACTOR
syn keyword     spzsSematics    MODEL_INFO_COLOR MODEL_INFO_NORMAL MODEL_INFO_POS NORMAL_MATRIX
syn keyword     spzsSematics    OTHER0 OTHER1 OTHER2 OTHER3 OTHER4 OTHER5 OTHER6 OTHER7 OTHER8 OTHER9 OTHER10 OTHER11 OTHER12 OTHER13 OTHER14 OTHER15 OTHER16 OTHER17 OTHER18 OTHER19 OTHER20
syn keyword     spzsSematics    OTHER21 OTHER22 OTHER23 OTHER24 OTHER25 OTHER26 OTHER27 OTHER28 OTHER29 OTHER30 OTHER31 OTHER32 OTHER33 OTHER34 OTHER35 OTHER36 OTHER37 OTHER38 OTHER39 OTHER40
syn keyword     spzsSematics    OTHER41 OTHER42 OTHER43 OTHER44 OTHER45 OTHER46 OTHER47 OTHER48 OTHER49 OTHER50 OTHER51 OTHER52 OTHER53 OTHER54 OTHER55 OTHER56 OTHER57 OTHER58 OTHER59 OTHER60 OTHER61 OTHER62 OTHER63
syn keyword     spzsSematics    PER_SCN_INFO PLANET_POS POINT_LIGHT_ATTR PROJECTION REFLECT_WVP REFLECT_ROT RNM_WEIGH SH_ATTR SHADOW_BLEND_ALL SHADOW_INFO SHADOW_LIGHT_ATTR SPECULAR SPECULAR_POWER STATIC_AMBIENT STATIC_ENV TERRAIN_DEFAULT TERRAIN_TRANSFORM
syn keyword     spzsSematics    TEXTURE_TRANS0 TEXTURE_TRANS1 TEXTURE_TRANS2 TEXTURE_TRANS3 TEXTURE_TRANS4 TEXTURE_TRANS5 TEXTURE_TRANS6 TEXTURE_TRANS7 TEXTURE_TRANS8 TEXTURE_TRANS9 TEXTURE_TRANS10 TEXTURE_TRANS11 TEXTURE_TRANS12 TEXTURE_TRANS13 TEXTURE_TRANS14 TEXTURE_TRANS15
syn keyword     spzsSematics    TFACTOR TRANSMISSION_INFO VIEW VIEW_PROJECTION VIEWPORT_SIZE VIEWPORT_TRANSFORM WATER_OFFSET WORLD WORLD_VIEW WORLD_VIEW_PROJECTION
syn keyword     spzsSematics    DIFFUSE SPECULAR EMISSIVE LIGHTMAP DIFFUSE_ALPHA DEPTH DEPTH_BUFFER SHADOW BONE TRANSMISSION NORMAL LIGHTMAPA LIGHTMAPB REFLECT IRRANDIANCE0 IRRANDIANCE1
syn keyword     spzsSematics    MASK METALLIC ENVIRONMENT ENVIRONMENT_REFLECT RIM TERRAIN1 TERRAIN2 TERRAIN3 TERRAIN_BLEND
syn keyword     spzsSematics    OTHER0 OTHER1 OTHER2 OTHER3 OTHER4 OTHER5 OTHER6 OTHER7 OTHER8 OTHER9 OTHER10 OTHER11 OTHER12 OTHER13 OTHER14 OTHER15


hi def link spzsType        Type
hi def link spzsPrecision   Identifier
hi def link spzsRegister    Keyword
hi def link spzsComment     Comment
hi def link spzsTodo        Todo
hi def link spzsFloat       Float
hi def link spzsInt         Number
hi def link spzsString      String
hi def link spzsOperator    Operator
hi def link spzsFuncBuiltin Function
hi def link spzsFuncCustom  Function
hi def link spzsStatement   Statement
hi def link spzsKeyword     Keyword
hi def link spzsRepeat      Repeat
hi def link spzsConditional Conditional
hi def link spzsLabel       Label
hi def link spzsTag         Tag
hi def link spzsSematics    Constant
