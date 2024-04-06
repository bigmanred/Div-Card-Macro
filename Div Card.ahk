#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

; using screen coordinates
firstSlotX := 1334
firstSlotY := 601
tradeX := 649
tradeY := 720
itemX := 650
itemY := 633
breakFlag := false

; pixels for trade
; seems to be 49-50 px
; further testing seems to suggest 52px
invX := 51
invY := 51

Random sleepDelay, 83, 150


; Add hotkey to exit script when button is pressed
*F7::ExitApp


; shift + "/"
+/::
breakFlag := !breakFlag

if (breakFlag == 0)
{
    Tooltip, Macro ON
}
else
{
    Tooltip, Macro OFF
}
SetTimer, RemoveToolTip, 1000
return


; shift + F12
+F12::
breakFlag := false
Tooltip, Macro ON
SetTimer, RemoveToolTip, 1000

invPosX := firstSlotX
loop, 12
{
    invPosY := firstSlotY
    loop, 5
    {
        ; 1. shift click slot in inventory
        if (!breakFlag) return
        CtrlClick(invPosX, invPosY, sleepDelay)

        ; 2. click trade
        if (!breakFlag) return
        CtrlClick(tradeX, tradeY, sleepDelay)

        ; 3. shift click item back into inventory
        if (!breakFlag) return
        CtrlClick(itemX, itemY, sleepDelay)

        invPosY := invPosY + invY
    }
    invPosY := firstSlotY
    invPosX := invPosX + invX
}
return





CtrlClick(x, y, delay)
{
    Mousemove, %x%, %y%
    Sleep, %delay%
    Send, ^{click}
    return
}

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
Return