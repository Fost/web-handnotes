# My Handnotes

## Структура заметок

* ```mkdocs.yml``` основной файл конфигурации.
* ```./src``` содержит исходники заметок, разметку и изображения.

## Разработка

### Пререквизиты

Используется [**MkDocs**](https://www.mkdocs.org/) и [**Material for MkDocs**](https://squidfunk.github.io/mkdocs-material/).

1. Python 3.7 или выше.
3. npm install
4. pip install -r requirements.txt

### Локальный сервер

```console
npm run start
```

<http://127.0.0.1:8000>

### Сборка

```console
mkdocs build --clean
```

### Форматирование

```.markdownlintrc```.

```console
npm run lint
```

Исправление ошибок

```console
npm run lint:fix
```
