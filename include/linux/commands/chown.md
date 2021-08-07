<code>&nbsp;</code>   <code>&nbsp;</code> <code>&nbsp;</code> [`c`][chown -&#99;] <code>&nbsp;</code> <code>&nbsp;</code> [`f`][chown -&#102;] <code>&nbsp;</code> [`h`][chown -&#104;] <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> [`v`][chown -&#118;] <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code>
<br>
<code>&nbsp;</code>&nbsp;<code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> [`H`][chown -&#72;] <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> [`L`][chown -&#76;] <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> [`P`][chown -&#80;] <code>&nbsp;</code> [`R`][chown -&#82;] <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code> <code>&nbsp;</code>

Изменяющая владельца и/или группу для указанных файлов. В качестве имени владельца/группы берётся первый аргумент,
не являющийся опцией. Если задано только имя пользователя (или числовой идентификатор пользователя),
то данный пользователь становится владельцем каждого из указанных файлов, а группа этих файлов не изменяется.
Если за именем пользователя через двоеточие следует имя группы (или числовой идентификатор группы),
без пробелов между ними, то изменяется также и группа файла.

`chown` запись в формате `user:group`.


```sh
chown susan:delta file          # Для {file} назначили пользователя `susan` и группу `delta`
chown alan file                 # Для {file} назначили пользователя `alan`
chown alan: file                # Для {file} назначили пользователя и группу `alan`
chown :gamma file               # Для {file} назначили группу `gamma`
```
Рекурсинвное назначение прав для пользователя {user} и для пути {path}
```sh
chown -R user path
```
Для {path} назначили пользователя `susan` и группу `delta`, рекурсивно и с подробным выводом
```sh
chown --verbose --recursive susan:delta path
chown -vR susan:delta path
```
```sh
chown -vR --reference=. path    # Использование `reference` файла для конфигурации назначения прав
chown -cfR --preserve-root alan # `preserve-root` предотвращает изменения файлов в корневом каталоге, если не используется с `рекурсивным`
```

[chown -&#99;]: #chown '&#10;$ chown -c&#10;$ chown --changes&#10;&#10;Печать информации об измененных файлах.&#10;'
[chown -&#102;]: #chown '&#10;$ chown -f&#10;$ chown --quiet&#10;&#10;Не печатайте сообщения об ошибках о файлах, которые нельзя изменить.&#10;'
[chown -&#104;]: #chown '&#10;$ chown -h&#10;$ chown --no-dereference&#10;&#10;Смена владельца по символическим ссылкам.&#10;'
[chown -&#72;]: #chown '&#10;$ chown -H&#10;&#10;При использовании с `-R`, если аргумент командной строки является символической ссылкой на каталог, рекурсивно пройдет по каталогу.&#10;'
[chown -&#76;]: #chown '&#10;$ chown -L&#10;&#10;При использовании с `-R`, если какая-либо символическая ссылка указывает на каталог, рекурсивно пройдет каталог.&#10;'
[chown -&#80;]: #chown '&#10;$ chown -P&#10;&#10;При использовании с `-R` не переходите по каким-либо символическим ссылкам (по умолчанию).&#10;'
[chown -&#82;]: #chown '&#10;$ chown -R&#10;$ chown --recursive&#10;&#10;Рекурсивно спускайтесь по каталогу, включая подкаталоги и символические ссылки. При использовании с `-H`, `-L` и `-P` последнее имеет приоритет.&#10;'
[chown -&#118;]: #chown '&#10;$ chown -v&#10;$ chown --verbose&#10;&#10;Подробный вывод.&#10;'
[chown --dereference]: #chown '&#10;$ chown --dereference&#10;&#10;Измените группу файла, на который указывает символическая ссылка, а не группу самой символической ссылки (по умолчанию).&#10;'
[chown --no-preserve-root]: #chown '&#10;$ chown --no-preserve-root&#10;&#10;Не обрабатывайте корневой каталог специально (по умолчанию).&#10;'
[chown --preserve-root]: #chown '&#10;$ chown --preserve-root&#10;&#10;Не действуйте повторно в корневом каталоге.&#10;'
[chown --reference]: #chown '&#10;$ chown --reference $FILENAME&#10;&#10;измените группу на группу, связанную с `$FILENAME`. В этом случае "$NEWGROUP " не указан.&#10;'
