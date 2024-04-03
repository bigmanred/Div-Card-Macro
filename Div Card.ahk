#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%


;First slot
;Screen:	1334, 601 (less often used)
;Window:	1334, -439 (default)
;Client:	1334, -439 (recommended)
;Color:	524B40 (Red=52 Green=4B Blue=40)
;
;Trade button
;Screen:	649, 720 (less often used)
;Window:	657, 728 (default)
;Client:	649, 697 (recommended)
;Color:	9D9D9D (Red=9D Green=9D Blue=9D)
;
;Click item to return to inventory
;Screen:	650, 633 (less often used)
;Window:	658, 641 (default)
;Client:	650, 610 (recommended)
;Color:	000000 (Red=00 Green=00 Blue=00)
;
;Second slot
;Screen:	1383, 601 (less often used)
;Window:	1391, 609 (default)
;Client:	1383, 578 (recommended)
;Color:	514B43 (Red=51 Green=4B Blue=43)

; this means that slots are 49-50 pixels away from each other, both x and y


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

Random sleepDelay, 50, 83

; shift + "/"
+/::
breakFlag := !breakFlag
return

; shift + F12
+F12::
breakFlag := false
invPosX := firstSlotX
loop, 12
{
    invPosY := firstSlotY
    loop, 5
    {
        ; 1. shift click slot in inventory
        breakCheck()
        CtrlClick(invPosX, invPosY, sleepDelay)

        ; 2. click trade
        breakCheck()
        CtrlClick(tradeX, tradeY, sleepDelay)

        ; 3. shift click item back into inventory
        breakCheck()
        CtrlClick(itemX, itemY, sleepDelay)

        invPosY := invPosY + invY
    }
    invPosY := firstSlotY
    invPosX := invPosX + invX
}
return


; Add hotkey to exit script when F6 is pressed
F7::ExitApp


CtrlClick(x, y, delay)
{
    Mousemove, %x%, %y%
    Sleep, %delay%
    Send, ^{click}
    Sleep, %delay%
    return
}

breakCheck()
{
    if (breakFlag)
    {
        return
    }
}