; --------------------------------
; * General
; --------------------------------

; IME切り替え
*~LAlt::Send {Blind}{vk07}
*~RAlt::Send {Blind}{vk07}
LAlt up::IME_SET(0)
RAlt up::IME_SET(1)
