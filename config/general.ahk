; --------------------------------
; * General
; --------------------------------

*~LAlt::Send {Blind}{vk07}
*~RAlt::Send {Blind}{vk07}
LAlt up::
    if (A_PriorHotkey == "*~LAlt") IME_SET(0)
RAlt up::
    if (A_PriorHotkey == "*~RAlt") IME_SET(1)
