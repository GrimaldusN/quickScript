toggle := false

F1:: {
    if !ProcessExist("chrome.exe")
        Run("chrome.exe")
    else
        ProcessClose("chrome.exe")
}

F2:: {
    if !ProcessExist("firefox.exe") {
        Run("firefox.exe https://chatgpt.com/")
        Run("firefox.exe https://soundcloud.com/discover")
        Run("firefox.exe https://leetcode.com/problemset/")
    } else {
        ProcessClose("firefox.exe")
    }
}

F3:: {
    global toggle := !toggle
    ToolTip(toggle ? "Переключение вкладок: ВКЛ" : "Переключение вкладок: ВЫКЛ")
    SetTimer(() => ToolTip(), -1000)
}

F4:: {
    Run("firefox.exe https://senkuro.com/users/@91702623119434129/bookmarks")
}

F10:: {
    Run("firefox.exe https://www.ausbildung.de/aktuelle-ausbildungsplaetze/?form_main_search%5Bradius%5D=1000&form_main_search%5Bexpected_graduation%5D=&form_main_search%5Bprofession_public_id%5D=&form_main_search%5Bprofession_topic_public_id%5D=&form_main_search%5Bindustry_public_id%5D=&form_main_search%5Bstarts_no_earlier_than%5D=Januar+2025&form_main_search%5Bshow_regular_apprenticeships%5D=1&form_main_search%5Bshow_educational_trainings%5D=1&form_main_search%5Bshow_integrated_degree_programs%5D=1&form_main_search%5Bshow_qualifications%5D=1&form_main_search%5Bshow_inhouse_trainings%5D=1&form_main_search%5Bshow_training_programs%5D=1&form_main_search%5Bshow_educational_trainings_and_regular_apprenticeships%5D=1&form_main_search%5Bsort_order%5D=relevance&form_main_search%5Bwhat%5D=Fachinformatiker%2Fin+f%C3%BCr+Anwendungsentwicklung&form_main_search%5Bwhere%5D=Hannover&t_where=Hannover&t_what=Fachinformatiker%2Fin+f%C3%BCr+Anwendungsentwicklung")
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

PrintScreen:: {
    if !WinExist("ahk_exe SnippingTool.exe")
        Run("SnippingTool.exe")
    else
        WinActivate("ahk_exe SnippingTool.exe")
        Send("^n")
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

#HotIf toggle and (WinActive("ahk_exe firefox.exe") or WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe msedge.exe"))

Left::Send("^+{Tab}")  
Right::Send("^{Tab}") 

#HotIf
