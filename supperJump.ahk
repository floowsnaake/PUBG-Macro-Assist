IF NOT A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}

#SingleInstance Force

CoordMode, Mouse, Client
CoordMode, Pixel, Client
CoordMode, ToolTip, Client

SendMode, Input

+space:: ; Shift + Space
Random,delay,400,600
	Send, {Space Down}{c down}
	Sleep, %delay%
	Send, {Space up}{c up}
	Send, {ShiftDown}
Return
