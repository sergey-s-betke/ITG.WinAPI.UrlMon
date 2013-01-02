ITG.WinAPI.UrlMon
=================

Обёртки для Windows API UrlMon.dll и командлеты на их основе

Версия модуля: **2.0.2**

Функции модуля
--------------

### MIME

#### Обзор [Get-MIME][]

Функция определяет MIME тип файла по его содержимому и расширению имени файла.

	Get-MIME [-Path] <FileInfo> <CommonParameters>

Подробнее - [Get-MIME][].

Подробное описание функций модуля
---------------------------------

#### Get-MIME

Функция определяет MIME тип файла по его содержимому и расширению имени файла
(если файл недоступен).
Обёртка для API [FindMimeFromData][].

##### Синтаксис

	Get-MIME [-Path] <FileInfo> <CommonParameters>

##### Параметры

- `Path <FileInfo>`
        путь к файлу, MIME для которого необходимо определить

        Требуется? true
        Позиция? 1
        Значение по умолчанию
        Принимать входные данные конвейера?true (ByValue)
        Принимать подстановочные знаки?

- `<CommonParameters>`
        Данный командлет поддерживает общие параметры: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer и OutVariable. Для получения дополнительных сведений введите
        "get-help [about_CommonParameters][]".



##### Примеры использования

1. Пример 1.

		"logo.jpg" | Get-MIME

##### Связанные ссылки

- [FindMimeFromData][]
- Обсуждение неочевидных тонкостей использования
[FindMimeFromData][] - <http://social.msdn.microsoft.com/Forums/en-US/Vsexpressvcs/thread/d79e76e3-b8c9-4fce-a97d-94ded18ea4dd>


[about_CommonParameters]: http://go.microsoft.com/fwlink/?LinkID=113216 "Описание параметров, которые могут использоваться с любым командлетом."
[FindMimeFromData]: http://msdn.microsoft.com/en-us/library/ms775107.aspx 
[Get-MIME]: <ITG.WinAPI.UrlMon#Get-MIME> "Функция определяет MIME тип файла по его содержимому и расширению имени файла."

---------------------------------------

Генератор: [ITG.Readme](http://github.com/IT-Service/ITG.Readme "Модуль PowerShell для генерации readme для модулей PowerShell").

