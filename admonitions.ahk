﻿; Generated by AutoGUI 2.6.2
; Author: Jerry http://jdev.tw/blog
; AutoHotkey GUI for Obsidian-Admonitions plugin
; Version: 2021/04/03 v0.0.1 
;          2021/04/05 v0.0.2
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

global k_ID := 0
global imagesFolder := A_WorkingDir . "\admonitions\"

!q::
WinGet, k_ID, ID, A
Gui Font, s12, Segoe UI
Gui Add, Text, x16 y24 w70 h23 +0x200, 類型：
Gui Add, Picture, gAdNote x88 y4 w151 h76, %imagesFolder%\ad-note.png
Gui Add, Picture, gAdAbstract x240 y0 w176 h81, %imagesFolder%\ad-abstract.png
Gui Add, Picture, gAdInfo x416 y0 w149 h82, %imagesFolder%\ad-info.png
Gui Add, Picture, gAdTip x88 y88 w150 h78, %imagesFolder%\ad-tip.png
Gui Add, Picture, gAdSuccess x240 y88 w174 h77, %imagesFolder%\ad-success.png
Gui Add, Picture, gAdQuestion x419 y86 w151 h75, %imagesFolder%\ad-question.png
Gui Add, Picture, gAdFailure x240 y168 w172 h75, %imagesFolder%\ad-failure.png
Gui Add, Picture, gAdDanger x421 y169 w144 h73, %imagesFolder%\ad-danger.png
Gui Add, Picture, gAdBug x88 y248 w143 h76, %imagesFolder%\ad-bug.png
Gui Add, Picture, gAdExample x240 y248 w175 h76, %imagesFolder%\ad-example.png
Gui Add, Picture, gAdQuote x419 y248 w147 h74, %imagesFolder%\ad-quote.png
Gui Add, Picture, gAdWarning x88 y168 w150 h76, %imagesFolder%\ad-warning.png

Gui Show, x782 y143 w594 h341, Admonition 提醒區塊

Return

GuiEscape:
GuiClose:
  Gui Cancel

admonition(type, title) {
  Clipboard = 
(
``````ad-%type%
title: %title%
collapse: open
content: 
```````n
) 
  len := StrLen(title)
  ClipWait
  WinActivate, ahk_id %k_ID%
  SendInput, ^v
  SendInput, {up 4}{end}{left %len%}
}

AdNote(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("note", "備註")
  Gui Cancel
}

AdAbstract(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("abstract", "摘要")
  Gui Cancel
}

AdInfo(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("info", "資訊")
  Gui Cancel
}

AdTip(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("tip", "小技巧")
  Gui Cancel
}

AdSuccess(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("success", "完成")
  Gui Cancel
}

AdQuestion(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("question", "問題")
  Gui Cancel
}

AdFailure(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("failure", "失敗")
  Gui Cancel
}

AdDanger(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("danger", "錯誤")
  Gui Cancel
}

AdBug(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("bug", "臭蟲")
  Gui Cancel
}

AdExample(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("example", "範例")
  Gui Cancel
}

AdWarning(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("warning", "警告")
  Gui Cancel
}

AdQuote(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
  admonition("quote", "引用")
  Gui Cancel
}
