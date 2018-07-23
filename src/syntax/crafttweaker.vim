" Language: Crafttweaker

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword ctCondition if else in
syn keyword ctRepeat for while to
syn keyword ctKeywords as include import function return version to global static val var

syn keyword ctNull null
syn keyword ctBool true false
syn keyword ctPrimitives bool byte short int long float double string void
syn keyword ctObjectTypes IIngredient IItemStack ILiquidStack IOreDictEntry
syn region ctIIngredient matchgroup=Identifier start="<" end=">"

syn keyword ctClasses brewing crafttweaker format furnace game loot mods recipes seeds vanilla
syn keyword ctFunctions amount add addBrew addHidden addShaped addShapedMirrored addShapeless addAll all addRecipe remove removeAll removeByRegex removeByRecipeName removeShaped removeShapeless length mirror getFuel setFuel marked matches matchesExact print items withTag withDamage onlyWithTag onlyDamaged onlyDamageAtLeast onlyDamageAtMost onlyDamageBetween onlyStack or weight giveBack addChestLoot reuse removeChestLoot addSeed removeSeed displayName addTooltip addShiftTooltip clearTooltip setLocalisation transformReplace transformDamage noReturn transformConsume min max toLowerCase toUpperCase getBytes hashCode intern isEmpty toCharArray trim

" Numbers
syn match ctNumber '\d\+'
syn match ctNumber '[-+]\d\+'

" Floats
" syn match ctFloat '[-+]?[0-9]*\.?[0-9]+'

" Strings
syn region ctString start='"' skip='\\.' end='"'
syn region ctString start="'" skip='\\.' end="'"

" Blocks
syn region ctBlock matchgroup=ctParen start='{' end='}' fold transparent
syn region ctArray matchgroup=ctParen start='\[' end='\]' fold transparent

" Comments
syn keyword ctTodo contained TODO FIXME XXX
syn keyword ctPreProc contained debug ignoreBracketErrors loader modloaded norun priority

syn region ctComment start='#' end='$' contains=ctPreProc
syn region ctComment start='//' end='$' contains=ctTodo
syn region ctComment start='/\*' end='\*/' contains=ctTodo

syn match ctOperator "\v!"
syn match ctOperator "\v\~"
syn match ctOperator "\v\*"
syn match ctOperator "\v\ /\ "
syn match ctOperator "\v\+"
syn match ctOperator "\v-"
syn match ctOperator "\v\?"
syn match ctOperator "\v\="
syn match ctOperator "\v\*\="
syn match ctOperator "\v/\="
syn match ctOperator "\v\+\="
syn match ctOperator "\v-\="

hi def link ctTodo Todo
hi def link ctComment Comment
hi def link ctPreProc PreProc
hi def link ctCondition Conditional
hi def link ctRepeat Repeat
hi def link ctKeywords Keyword
hi def link ctOperator Operator

hi def link ctNull Boolean
hi def link ctBool Boolean
" hi def link ctFloat Number
hi def link ctNumber Number
hi def link ctString String
hi def link ctPrimitives Type
hi def link ctObjectTypes Type
hi def link ctIIngredient Float

hi def link ctClasses Keyword
hi def link ctFunctions Function

let b:current_syntax = "crafttweaker"

