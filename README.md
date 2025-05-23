# quickScript

**quickScript** — это коллекция полезных скриптов для автоматизации различных задач на платформе Windows с использованием AutoHotkey.

## Описание

Этот проект включает в себя несколько скриптов, которые могут помочь в повседневных задачах, таких как управление буфером обмена, автоматизация кликов мыши, создание горячих клавиш и многое другое. Все скрипты написаны с использованием **AutoHotkey** и могут быть настроены под личные нужды.

## Возможности

- **Автокликер** — автоматическое выполнение кликов мыши с заданным интервалом.
- **Менеджер буфера обмена** — хранение истории скопированного текста с возможностью вставки предыдущих элементов.
- **Горячие клавиши** — настройка горячих клавиш для быстрого доступа к часто используемым действиям.
- **Snipping Tool автоматизация** — включение инструмента для создания скриншотов с автоматическим переключением на его окно.

## Установка

1. Убедитесь, что у вас установлен [AutoHotkey](https://www.autohotkey.com/).
2. Клонируйте или скачайте репозиторий:
   ```bash
   git clone https://github.com/GrimaldusN/quickScript.git
## Использование

## Автокликер

    Нажмите Ctrl+Shift+Q для включения автокликера, и снова для его выключения. Между кликами будет пауза в 0.33 секунды.

## Менеджер буфера обмена

    Ctrl+Shift+C — сохранить текст в историю буфера обмена.

    Ctrl+Shift+V — выбрать и вставить текст из истории буфера обмена.

## Snipping Tool автоматизация

Нажмите PrintScreen для:

    Запуска Snipping Tool, если он не запущен.

    Переключение на окно Snipping Tool и создание нового снимка, если он уже открыт.

## Скрипты

## AutoClicker.ahk

Автоматически выполняет клики мыши через заданный интервал времени.

## ClipboardManager.ahk

Хранит историю буфера обмена и позволяет вставлять ранее скопированные элементы.

## SnippingToolAuto.ahk

Автоматизирует запуск и использование Snipping Tool (или его эквивалента).

## Настройка

Вы можете настроить горячие клавиши и другие параметры, изменив значения в скриптах. Например, в AutoClicker.ahk вы можете изменить горячую клавишу для включения автокликера.

## Контрибьюция

Если вы хотите внести изменения в проект, пожалуйста, создайте pull request. Мы приветствуем любые улучшения и исправления!
