#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

#j::
Run, %USERPROFILE%\Downloads
return

#v::
Run, "C:\Program Files\Microsoft VS Code\Code.exe"
return

#t::
Run, "C:\Program Files\Git\git-bash.exe" --cd="C:\Users\woobin"
WinWait, ahk_class mintty
; Retrieve window dimensions
WinGetPos, X, Y, Width, Height, ahk_class mintty
; Calculate new position to center the window
NewX := (A_ScreenWidth // 2) - (Width // 2)
NewY := (A_ScreenHeight // 2) - (Height // 2)
; Move the window to the new position
WinMove, ahk_class mintty, , NewX, NewY
return

#c::
Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
return

#n::
Run, "C:\Users\woobin\AppData\Local\Programs\Notion\Notion.exe"
return

#m::
Run, notepad.exe
WinWait, ahk_class Notepad
; Retrieve window dimensions
WinGetPos, X, Y, Width, Height, ahk_class Notepad
; Calculate new position to center the window
NewX := (A_ScreenWidth // 2) - (Width // 2)
NewY := (A_ScreenHeight // 2) - (Height // 2)
; Move the window to the new position
WinMove, ahk_class Notepad, , NewX, NewY
return

!+g::
    if WinExist("ChatGPT") {
        WinActivate
    } else {    
        Run, C:\Program Files\WindowsApps\OpenAI.ChatGPT-Desktop_1.2025.16.0_x64__2p2nqsd0c76g0\app\ChatGPT.exe
    }
Return

!+p::
    if WinExist("Perplexity") {
        WinActivate
    } else {
        Run, "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe" --profile-directory=Default --app-id=kpmdbogdmbfckbgdfdffkleoleokbhod
    }
return

!+c::
    if WinExist("Claude") {
        WinActivate
    } else {
    Run, "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=fmpnliohjhemenmnlpbfagaolkdacoja
    }
return


#k::
Run, C:\Program Files\Google\Chrome\Application\chrome_proxy.exe --profile-directory="Profile 1" --app-id=kjbdgfilnfhdoflbpgamdcdgpehopbep
return

; Mac 세팅 따라하기
!c::Send ^c  ; Alt+C → Ctrl+C (복사)
!v::Send ^v  ; Alt+V → Ctrl+V (붙여넣기)
!x::Send ^x  ; Alt+X → Ctrl+X (잘라내기)
!z::Send ^z  ; Alt+Z → Ctrl+Z (실행취소)
!a::Send ^a  ; Alt+A → Ctrl+A (전체선택)
!s::Send ^s  ; Alt+S → Ctrl+S (저장)
!f::Send ^f  ; Alt+F → Ctrl+F (찾기)

; 텍스트 이동
#Left::Send ^{Left}   ; Win + ← : 이전 단어로 이동
#Right::Send ^{Right} ; Win + → : 다음 단어로 이동
#+Left::Send ^+{Left}   ; Win + Shift + ← : 이전 단어 선택하면서 이동
#+Right::Send ^+{Right} ; Win + Shift + → : 다음 단어 선택하면서 이동

; 문서 탐색 기능
!Up::Send {Home}    ; Alt + ↑로 줄 처음으로
!Down::Send {End}   ; Alt + ↓로 줄 끝으로
!+Up::Send +{Home}  ; Alt + Shift + ↑로 줄 처음까지 선택
!+Down::Send +{End} ; Alt + Shift + ↓로 줄 끝까지 선택

; 프로그램 종료와 창닫기
!q::Send !{F4}  ; Alt + Q로 프로그램 종료
!w::Send ^{F4}  ; Alt + W로 현재 창만 닫기

; 앱 전환과 미션 컨트롤
; !Tab::Send #{Tab}  ; Alt + Tab으로 작업 보기(Mission Control)
!`::Send !{Esc}    ; Alt + `로 같은 앱의 창 전환

