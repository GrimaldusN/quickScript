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
    if(WinExist("ahk_exe firefox.exe")){
        WinActivate
        Send("^w")
    } else {
        Run("firefox.exe https://chatgpt.com/")
    }
}

F4:: {
    if(WinExist("ahk_exe firefox.exe")){
        WinActivate
        Send("^w")
    } else {
        Run("firefox.exe https://soundcloud.com/discover")
    }
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