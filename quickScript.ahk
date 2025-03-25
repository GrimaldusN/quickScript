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

F4:: {
    if(WinExist("ahk_exe firefox.exe")){
        WinActivate
        Send("^w")
    } else {
        Run("firefox.exe https://soundcloud.com/discover")
    }
}

F3:: {
    if(WinExist("ahk_exe firefox.exe")){
        WinActivate
        Send("^w")
    } else {
        Run("firefox.exe https://de.pornhub.org/")
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