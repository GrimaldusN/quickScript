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

vkC0:: {
    muteState := SoundGetMute()
    SoundSetMute(!muteState)

    if WinExist("ahk_exe chrome.exe"){
        if muteState
            WinMaximize
        else
            WinActivate
    }
}