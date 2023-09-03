; This is not my script, to see the source, have a look here:
; https://www.autohotkey.com/boards/viewtopic.php?t=84587

; toggle taskbar on and off using hot key
; Control q

^q::            ; ToggleTaskbar()

If Transparent := !Transparent
{
    WinSet, Transparent, 0, ahk_class Shell_TrayWnd
 }
Else
{
    WinSet, Transparent, 255, ahk_class Shell_TrayWnd
    WinSet, TransColor, OFF, ahk_class Shell_TrayWnd
    WinSet, Transparent, OFF, ahk_class Shell_TrayWnd
    WinSet, Redraw,, ahk_class Shell_TrayWnd
}
Return