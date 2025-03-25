F1:: {
    if !ProcessExist("chrome.exe")
        Run("chrome.exe")
    else
        ProcessClose("chrome.exe")
}

vkC0:: {
    Mute()
    if WinExist("chrome.exe") {
        WinActivate
    }
}

Mute() {
    SoundSetMute(!SoundGetMute("Master"))
}