; --------------------------------
; * Clip Studio Paint
; --------------------------------
#IfWinActive ahk_class 742DEA58-ED6B-4402-BC11-20DFC6D08040

; ----------------------
; 1行目
; ----------------------

; BS
NumpadSub::^y
NumpadAdd::^z
; Enter

; ----------------------
; 2行目
; ----------------------

; NumpadMult Clip Studioの設定で左右反転に割り当て メインメニュー->表示->左右反転
Numpad9::m
Numpad6::p
Numpad3::e
NumpadDot::i

; ----------------------
; 3行目
; ----------------------

NumpadDiv::g
Numpad8::^d
Numpad5::[
Numpad2::]
; None

; ----------------------
; 4行目
; ----------------------

Tab::^s
; Numpad7
; Numpad4
; Numpad1
Numpad0::space

#IfWinActive
