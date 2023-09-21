; ************** Warning **************
; This script assumes assumed left-handed by default and `LAlt` & `LWin` have been modified using "Powertoys Keyboard Manager" as below:
; LWin -> LAlt, LAlt -> RCtrl
; *************************************

; -----AHK Docs-----
; https://autohotkey.com/docs/Hotkeys.htm
; https://autohotkey.com/docs/KeyList.htm

; -----Ref------
; https://gist.github.com/ascendbruce/677c3169259c975259045f905cd889d6
; https://github.com/stevenilsen123/mac-keyboard-behavior-in-windows/blob/main/mac.ahk

; -----KEY GUIDE-----
; # Win. (the key with the Windows logo) therefore `Send #e` would hold down Win and then press E.
; + Shift. For example, `Send, +abC` would send the text "AbC", and `Send, !+a` would press Alt+Shift+A.
; ^ Alt (because of remapkey). For example, `Send, This is text!a` would send the keys "This is text" and then press Alt+A. Note: !A produces a different effect in some programs than !a. This is because !A presses Alt+Shift+A and !a presses Alt+A. If in doubt, use lowercase.
; ! Ctrl (because of remapkey). For example, `Send, ^!a` would press Ctrl+Alt+A, and Send, ^{Home} would send Ctrl+Home. Note: ^A produces a different effect in some programs than ^a. This is because ^A presses Ctrl+Shift+A and ^a presses Ctrl+A. If in doubt, use lowercase.Sends Ctrl. For example, Send, ^!a would press Ctrl+Alt+A, and Send, ^{Home} would send Ctrl+Home. Note: ^A produces a different effect in some programs than ^a. This is because ^A presses Ctrl+Shift+A and ^a presses Ctrl+A. If in doubt, use lowercase.
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

; #Warn  ; Uncomment to enable warnings to assist with detecting common errors.
SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.

; Uncomment for key history
; #InstallKeybdHook
; KeyHistory

; ************** shortcuts commented below was handled using "Powertoys Keyboard manager" shortcut remap **************
;; App and tab switching
; RCtrl & Tab::AltTab
; RCtrl & Shift & Tab::ShiftAltTab ;; WONT work

;; Switch input language and keyboard layout
; <!Space::Send("#{Space}") ; WONT work when holding LAlt

;; Windows snipping tool
; +<!s::Send("+#s") ; BUGGY: also launching MS Office365

;; PowerToys Run default shortcut
; >^Space::Send("!{Space}") ; WONT work when holding RCtrl

;; PowerToys ColorPicker default shortcut
; +<!c::Send("+#{s}") ; BUGGY: also launching MS Office365

;; Windows search
<!s::Send("#{s}")

;; Quit the active app
^q::Send("!{f4}")

;; Windows Run
<!r::Send("#{r}")

;; Windows lock
<!l::Send("#{l}")

;; Windows desktop
<!d::Send("#{d}")

;; Windows File Explorer
<!e::Send("#{e}")

;; Windows Settings
<!i::Send("#{i}")

;; Windows Quick Setting
<!a::Send("#{a}")

;; Minimize all windows
<!m::Send("#{m}")

;; Open the clipboard history
<!v::Send("#{v}")

;; Open the Quick Link menu
<!x::Send("#{x}")

;; Open the snap layouts. Updated in Windows 11
<!z::Send("#{z}")

; *********************************************************************************************************************

; Insertion point movement
>^Left::
{
    Suspend(true)
    Send("{Home}")
    Suspend(false)
    return
}
>^Right::
{
    Suspend(true)
    Send("{End}")
    Suspend(false)
    return
}
>^Up::
{
    Suspend(true)
    Send("^{Home}")
    Suspend(false)
    return
}
>^Down::
{
    Suspend(true)
    Send("^{End}")
    Suspend(false)
    return
}
+>^Left::
{
    Suspend(true)
    Send("+{Home}")
    Suspend(false)
    return
}
+>^Right::
{
    Suspend(true)
    Send("+{End}")
    Suspend(false)
    return
}
+>^Up::
{
    Suspend(true)
    Send("+^{Home}")
    Suspend(false)
    return
}
+>^Down::
{
    Suspend(true)
    Send("+^{End}")
    Suspend(false)
    return
}
<!Left::
{
    Suspend(true)
    Send("^{Left}")
    Suspend(false)
    return
}
<!Right::
{
    Suspend(true)
    Send("^{Right}")
    Suspend(false)
    return
}
+<!Left::
{
    Suspend(true)
    Send("+^{Left}")
    Suspend(false)
    return
}
+<!Right::
{
    Suspend(true)
    Send("+^{Right}")
    Suspend(false)
    return
}
>^BS::
{
  Suspend(true)
  Send("+{Home}{Del}")
  Suspend(false)
  return
}
<!BS::
{
  Suspend(true)
  Send("^{BS}")
  Suspend(false)
  return
}