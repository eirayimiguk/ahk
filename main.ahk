; main.ahk
; Author: car7ary

#Include IME.ahk

; --------------------------------
; * General
; --------------------------------
LAlt up::IME_SET(0)
RAlt up::IME_SET(1)

; --------------------------------
; * Celeste
; --------------------------------
#IfWinActive,ahk_exe celeste.exe
w::Up
a::Left
s::Down
d::Right
#IfWinActive