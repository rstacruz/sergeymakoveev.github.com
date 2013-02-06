---

published: true

layout: post

title: Сервисы GetFavicon

categories: [blog]

tags: [service, online, development, favicon, getfavicon]

---

## getFavicon
> [http://getfavicon.appspot.com](http://getfavicon.appspot.com "Usage")  
> [http://g.etfv.co](http://g.etfv.co "Usage")  
> [https://github.com/potatolondon/getfavicon](https://github.com/potatolondon/getfavicon "Sources")

###Описание
Сервис отдает favicon ресурса, указанного в `{URL}` запроса.

###Использование
Формат запроса:

```
http://getfavicon.appspot.com/{URL}
http://g.etfv.co/{URL}
```

Например, получить favicon ресурса "[http://ya.ru](http://ya.ru)":

```console
http://getfavicon.appspot.com/http://ya.ru
http://g.etfv.co/http://ya.ru
```

###Особенности
*   поддерживает `https:` только на хосте [getfavicon.appspot.com](https://getfavicon.appspot.com/):

```
https://getfavicon.appspot.com/http://ya.ru
```
Таким образом, если ваш сайт доступен по `http:` и `https:` одновременно, будет работать "правильная" запись:

```html
<img src="//getfavicon.appspot.com/http://ya.ru" />
```
При этом браузер сам подставит в URL нужный префикс протокола.  
Если на ваш сайт обратились по `http:` - иконка будет взята с адреса http://getfavicon.appspot.com/http://ya.ru ,
если страница вашего сайта была запрошена по `https:` - иконка загрузится с адреса https://getfavicon.appspot.com/http://ya.ru

*   умеет получать favicon https-ресурсов:

```
http://getfavicon.appspot.com/https://ya.ru
http://g.etfv.co/https://ya.ru
```
*   можно задавать [настройки](http://g.etfv.co/) в get-параметрах: (escaping, default icon, ...)
*   сервис отвечает с любого хоста домена **getfavicon.appspot.com** - `*.getfavicon.appspot.com`:

```
http://1.getfavicon.appspot.com/http://ya.ru
http://12.getfavicon.appspot.com/http://ya.ru
http://abc.getfavicon.appspot.com/http://ya.ru
```
Таким образом, при одновременной загрузке большого количества иконок срабатывает ограничение браузера на количество одновременных запросов к одному и тому же хосту (количество зависит от реализации браузера).  
Данное свойство позволяет динамически генерировать имя хоста: **`hosthame`.getfavicon.appspot.com**, и, таким образом, обойти это ограничение, сокращая общее время загрузки страницы.

<! ------------------------------------------------------------------------- -->
