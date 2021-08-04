# My Handnotes


## Структура заметок

* ```mkdocs.yml``` основной файл конфигурации.
* ```./src``` содержит исходники заметок, разметку и изображения.

## Разработка

### Пререквизиты

Заметки используют [**MkDocs**](https://www.mkdocs.org/) and [**Material for MkDocs**](https://squidfunk.github.io/mkdocs-material/).
Шаги для локальной сборки и тестов:

1. Python 3.7 или выше.
2. Yarn 1.x
3. yarn install
4. pip install -r requirements.txt

### Локальный сервер

```console
yarn run start
```

открыть <http://127.0.0.1:8000>

### Сборка

```console
mkdocs build --clean
```

### Форматирование

Используется ```.markdownlintrc```.

```console
yarn run lint
```

Исправление всех ошибок автоматически

```console
yarn run lint:fix
```
