# Администрирование магазина

## Базовый функционал

1. `/products` Товары — общий список того, что есть
1. `/tags` — Категории товаров. Возможность присвоить товаром категории. Например, детские, для компаний и т.д.
1. `/manufacturers` — Производитель товара. Например, издатель Hobby world
1. `/upload_report` Загрузка отчёта товаров из 1С xlsx-файл (приходит каждый день). Игры сравниваются по артикулу и Номенклатуре.
1. `/reports` — Отчёты за день/неделю/месяц о движении товаров. Например, топ самых продаваемых, распределение по категориям, производителям. Список товаров, которые долго лежат на складе и не продаются

## На будущее

### Продацы

1. Формирование графика работы продавцов
1. Рассчёт зп в зависимости от количества смен

### Учёт выручки

1. `/login` Авторизация
1. `/users` Пользователи. Роли: Продавец, Управляющий, Админ
1. Форма ввода выручки за день
1. Ввод суммы наличных в кассе в начале дня и в конце с привязкой к юзеру, который вносит изменения
1. Ввод планируемой суммы выручки и планируемых трат
1. Вывод общей выручки за месяц по дням, с рассчётом среднего и возможностью вносить плоновую выручку. Если выручка ниже планового значения, то выделять красным, если выше, то зелёным
1. Вывод выручки по месяцам

### Учёт трафика

1. Ввод проходящего трафика за день, входящего трафика и количества чеков

### Календарь событий

1. `/clients` — Клиенты. Можно добавлять к событиям.
1. Календарь с возможностю добавлять события. Например, начало продаж какой-либо игры или напоминаний. К событию добавлять участников
1. Интеграция с telegram, чтобы в группу приходило уведомление о событии.

### Учёт запросов покупателей

1. Добавлять запросы клиентов с их контактными данными