#SingleInstance Force


#j::
Run, "C:\Users\woobin\Downloads"
return

#k::
Run, "D:"
return


#v::
Run, "C:\Program Files\Microsoft VS Code\Code.exe"
return



#t::
TargetW := 1000
TargetH := 650
; Launch Windows Terminal with the Command Prompt profile at C:\
Run, wt.exe -p "Command Prompt" -d C:\, , pid
; Replace the Win* lines with:
WinWait, ahk_exe WindowsTerminal.exe
WinRestore, ahk_exe WindowsTerminal.exe
WinMove,   ahk_exe WindowsTerminal.exe, , , , TargetW, TargetH
WinGetPos, , , w, h, ahk_exe WindowsTerminal.exe
WinMove,   ahk_exe WindowsTerminal.exe, , (A_ScreenWidth-w)//2, (A_ScreenHeight-h)//2
; Resize then center
WinMove, ahk_pid %pid%, , , , TargetW, TargetH
Sleep, 60
WinGetPos, , , w, h, ahk_pid %pid%
NewX := (A_ScreenWidth - w) // 2
NewY := (A_ScreenHeight - h) // 2
WinMove, ahk_pid %pid%, , NewX, NewY
return




#c::
Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
return




#n::
Run, "C:\Users\woobin\AppData\Local\Programs\Notion\Notion.exe"
return


#m::
TargetW := 1000
TargetH := 650

; Launch Notepad
Run, notepad.exe,,, pid

; Wait for Notepad window
WinWait, ahk_exe notepad.exe
WinRestore, ahk_exe notepad.exe
WinMove,   ahk_exe notepad.exe, , , , TargetW, TargetH
WinGetPos, , , w, h, ahk_exe notepad.exe
WinMove,   ahk_exe notepad.exe, , (A_ScreenWidth-w)//2, (A_ScreenHeight-h)//2

; Resize then center (PID path too)
WinMove, ahk_pid %pid%, , , , TargetW, TargetH
Sleep, 60
WinGetPos, , , w, h, ahk_pid %pid%
NewX := (A_ScreenWidth - w) // 2
NewY := (A_ScreenHeight - h) // 2
WinMove, ahk_pid %pid%, , NewX, NewY
return






!+g::
    if WinExist("ahk_exe ChatGPT.exe") {
        WinActivate
    } else {
        Run, "C:\Users\woobin\Documents\AutoHotkey\ChatGPT.lnk"
    }
Return



!+p::
    if WinExist("Perplexity") {
        WinActivate
    } else {
        Run, "C:\Users\woobin\AppData\Local\Programs\Perplexity\Perplexity.exe"
    }
return

!+c::
    if WinExist("Claude") {
        WinActivate
    } else {
    Run, "C:\Users\woobin\AppData\Local\AnthropicClaude\claude.exe"
    }
return


::/req::
clipboard := "[수신자]`n[요청 배경]`n[요청 내용]`n[희망 일정]`n[참조 자료]"
Send ^v
return

::@@::
clipboard := "woobina@gmail.com"
Send ^v
return





; Mac 세팅 따라하기
;!c::Send ^c  ; Alt+C → Ctrl+C (복사)
;!v::Send ^v  ; Alt+V → Ctrl+V (붙여넣기)
;!x::Send ^x  ; Alt+X → Ctrl+X (잘라내기)
;!z::Send ^z  ; Alt+Z → Ctrl+Z (실행취소)
;!a::Send ^a  ; Alt+A → Ctrl+A (전체선택)
;!s::Send ^s  ; Alt+S → Ctrl+S (저장)
;!f::Send ^f  ; Alt+F → Ctrl+F (찾기)

; 텍스트 이동
;#Left::Send ^{Left}   ; Win + ← : 이전 단어로 이동
;#Right::Send ^{Right} ; Win + → : 다음 단어로 이동
;#+Left::Send ^+{Left}   ; Win + Shift + ← : 이전 단어 선택하면서 이동
;#+Right::Send ^+{Right} ; Win + Shift + → : 다음 단어 선택하면서 이동

; 문서 탐색 기능
;!Up::Send {Home}    ; Alt + ↑로 줄 처음으로
;!Down::Send {End}   ; Alt + ↓로 줄 끝으로
;!+Up::Send +{Home}  ; Alt + Shift + ↑로 줄 처음까지 선택
;!+Down::Send +{End} ; Alt + Shift + ↓로 줄 끝까지 선택

; 프로그램 종료와 창닫기
;!q::Send !{F4}  ; Alt + Q로 프로그램 종료
;!w::Send ^{F4}  ; Alt + W로 현재 창만 닫기

; 앱 전환과 미션 컨트롤
;; !Tab::Send #{Tab}  ; Alt + Tab으로 작업 보기(Mission Control)
;!`::Send !{Esc}    ; Alt + `로 같은 앱의 창 전환


