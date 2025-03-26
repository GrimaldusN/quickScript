toggle := false

F1:: {
    if !ProcessExist("chrome.exe")
        Run("chrome.exe")
    else
        ProcessClose("chrome.exe")
}

F2:: {
    if !ProcessExist("firefox.exe")
        Run("firefox.exe")
    else
        ProcessClose("firefox.exe")
}

F3:: {
    Run("firefox.exe https://chatgpt.com/")
}

F4:: {
    Run("firefox.exe https://soundcloud.com/discover")
}

F10:: {
    Run("firefox.exe https://www.youtube.com/watch?v=dQw4w9WgXcQ")
}

F5:: {
    if (ProcessExist("Code.exe")) {
        ProcessClose("Code.exe")  
    } else {
        Run("C:\Users\Multimedia3\AppData\Local\Programs\Microsoft VS Code\Code.exe")
    }
}

vkC0:: {
    muteState := SoundGetMute()
    SoundSetMute(!muteState)

    if WinExist("ahk_exe chrome.exe"){
        if muteState
            WinMaximize("ahk_exe chrome.exe")
        else
            WinMinimize("ahk_exe chrome.exe")
    }
}

`:: {
    muteState := SoundGetMute()
    SoundSetMute(!muteState)

    if WinExist("ahk_exe chrome.exe"){
        if muteState
            WinMaximize("ahk_exe chrome.exe")
        else
            WinMinimize("ahk_exe chrome.exe")
    }
}

NumpadSub:: {
    Send("^w")
    return
}

^+q::{
    global toggle

    toggle := !toggle

    if(toggle){
        SetTimer(AutoClick, 100)
        MsgBox("Автокликер включен.")
    } else {
        SetTimer(AutoClick, 0)
        MsgBox("Автокликер выключен.")
    }
}

AutoClick(){
    Click()
    Sleep(333)
}
