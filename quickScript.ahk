F1:: 
if !ProcessExist("chrome.exe")
    Run("chrome.exe")
else
    ProcessClose("chrome.exe")

return

vkC0::  
Mute() 
if WinExist("ahk_exe chrome.exe") {  
    WinActivate 
}
return

Mute() {
    SoundSetMute !SoundGetMute()
}
