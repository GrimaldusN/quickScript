#Requires AutoHotkey v2.0

global voice := ComObject("SAPI.SpVoice")
global speaking := false

^!s:: ; Ctrl+Alt+S — Start reading
{
    global speaking

    if speaking {
        MsgBox("Уже читаю!")
        return
    }

    text := GetWindowText()
    if text = "" {
        MsgBox("Не удалось получить текст из окна.")
        return
    }

    speaking := true
    voice.Speak(text, 1) ; async
}

^!q:: ; Ctrl+Alt+Q — Stop reading
{
    global speaking

    if speaking {
        voice.Speak("", 2) ; stop
        speaking := false
    }
}

GetWindowText() {
    outText := ""
    ; Попробуем получить текст непосредственно из активного окна
    WinGetText(outText, "A")
    if outText != ""
        return outText

    ; Если не удалось, попробуем получить заголовок окна
    title := ""
    WinGetTitle(title, "A")
    return title
}

^!i:: ; Ctrl+Alt+I — Информация об активном окне
{
    title := WinGetTitle("A")
    class := WinGetClass("A")
    pid := WinGetPID("A")
    procName := WinGetProcessName("A")
    windowText := WinGetText("A")
    controlList := WinGetControls("A") ; возвращает массив

    info := "Информация об активном окне:`n"
    info .= "Заголовок: " title "`n"
    info .= "Класс окна: " class "`n"
    info .= "Имя процесса: " procName "`n"
    info .= "PID: " pid "`n`n"

    info .= "Текст окна:`n" windowText "`n`n"
    info .= "Контролы:`n"

    for _, control in controlList {
        controlText := ""
        try ControlGetText(controlText, control, "A")
        info .= " - " control ": " controlText "`n"
    }

    MsgBox(info)
}
