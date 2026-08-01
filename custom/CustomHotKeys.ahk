#Requires AutoHotkey v2.0

GroupAdd "Editors", "ahk_exe cursor.exe"
GroupAdd "Editors", "ahk_exe code.exe"
GroupAdd "Editors", "ahk_exe Trae CN.exe"

SetStoreCapsLockMode(false)

; Alt+` -> CapsLock
!`:: {
    SetCapsLockState !GetKeyState("CapsLock", "T")
}

; CapsLock -> Ctrl
*$CapsLock:: {
    Send "{Blind}{LControl DownR}"
}

*$CapsLock up:: {
    Send "{Blind}{LControl Up}"
}

; Special HotKeys for group Editors.
#HotIf WinActive("ahk_group Editors")

; win+alt+up -> ctrl+alt+up
#!Up::Send "^!{Up}"

; win+alt+down -> ctrl+alt+down
#!Down::Send "^!{Down}"

; win+shift+f -> win+alt+shift+f
#+f::Send "#!+f"

#HotIf
