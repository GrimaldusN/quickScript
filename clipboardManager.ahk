global clipboardHistory := []  ; Объявляем глобальную переменную для истории буфера обмена
maxHistory := 10  ; Максимальное количество элементов в истории

^+c::  ; Ctrl+Shift+C вместо Ctrl+C
{
    ClipWait(1)
    if (A_Clipboard) {
        clipboardHistory.InsertAt(1, A_Clipboard)  ; Добавляем новый элемент в начало истории
        if (clipboardHistory.Length > maxHistory) {
            clipboardHistory.Pop()  ; Удаляем самый старый элемент, если список переполнен
        }
    }
    MsgBox("Текст скопирован!")
}

^+v::  ; Ctrl+Shift+V вместо Ctrl+V
{
    if (clipboardHistory.Length = 0) {
        MsgBox("Нет данных в буфере обмена")
        return
    }

    ; Строим меню для выбора текста из истории
    menu := ""
    for index, item in clipboardHistory {
        menu .= index . ". " . item . "`n"
    }

    ; Отображаем список вариантов
    MsgBox("Выберите номер текста для вставки:`n" . menu)

    ; Вводим номер элемента для вставки
    userChoice := InputBox("Выбор текста", "Введите номер текста для вставки:")

    ; Проверяем правильность введенного номера
    if (userChoice >= 1 && userChoice <= clipboardHistory.Length) {
        selectedText := clipboardHistory[userChoice]
        A_Clipboard := selectedText  ; Обновляем буфер обмена выбранным текстом
        Send("^v")  ; Вставляем выбранный текст
    } else {
        MsgBox("Неверный выбор.")
    }
}

Return
