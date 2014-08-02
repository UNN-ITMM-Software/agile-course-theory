# General
  - Краткая заметка на Хабр (Coursera?)
  - Разобрать feedback от студентов:
    - <https://docs.google.com/spreadsheet/ccc?key=0AsBBkrQIoSbjdE8tZDJNRnBLNFdJcDlHdHY0UlRBNlE&usp=drive_web#gid=0>
    - Юданов Вячеслав - Доработка лекций (создание новых), Разработка
      лабораторных работ (проектов-примеров), Прочтение лекций и проведение
      лабораторных в следующем году (например как аспиранты)
    - Даниил Осокин - Доработка лекций (создание новых)
    - Сергей Жданов - Разработка лабораторных работ (проектов-примеров)

  - Restructure everything
    - agile-development-course
      - source slides, program, todo
      - practice instructions
      - github pages
    - agile-development-project-template (submodule of the theory project)
      - template project
      - Travis configs and all checks
    - agile-development-practice-2014

# Лекции

  - Стратегия - тактика - техника, разложить по ним темы
  - Разница между принципами и практиками (из Поппендик), добавить такой вопрос
  - Локальные улучшения
    - Явно выписать негативные последствия нарушения каждого из SOLID принципов
    - В лекции по DDD рассмотреть основные концепции (сущности, агрегаты и т.д.)

  - Глобально пересмотреть программу курса
    - Проанализировать содержание книги Agile Samurai (набрать картинок)
  - Потенциальные лекции
    - Непрерывная интеграция, инструментальная поддержка
    - TDD with C
    - BDD
    - Просто про виды тестов (особенно unit) и подробнее про тестирование
  - Почитать
    - разные манифесты <http://blog.byndyu.ru/2013/09/it.html>
    - <http://en.wikipedia.org/wiki/Composition_over_inheritance>
  - SOLID
    - <http://blog.byndyu.ru/2009/10/solid.html#.UleeRtIvlnw>

  - Понятие антипаттерна <http://en.wikipedia.org/wiki/Anti-pattern#Software_design_anti-patterns>
    - <http://habrahabr.ru/post/43761/>
    - <http://c2.com/cgi/wiki?AntiPatternsCatalog>

# Материалы
  - Презентации
    - Переформатировать их в markdown
    - Положить все презентации на GitHub (спросить Антона можно ли)
    - Переделать изображения в SVG
    - Создать страничку с сcылками на сгенерированные html
  - GitHub Pages
    - Remove contents of the *_site* folder
    - Разобраться с русскими шрифтами
    - Insert G+, facebook like and other buttons

# Содержание курса
  - Добавить детальную лекцию про тестирование и мобульное тестирование
    - Написание тестов
    - Это кстати может быть лекция про TDD на Embedded C
    - Какие бывают тесты: модульные, функциональные, приемочные,
      инфраструктурные, smoke, stress

  - XP in images <http://www.threeriversinstitute.org/XPInPictures.html>
  - <http://code.google.com/p/ndddsample/>
  - <http://stackoverflow.com/questions/152120/are-there-any-open-source-projects-using-ddd-domain-driven-design>
  - <http://vimeo.com/34365549>
  - Hard Code book:
    - p2: Agile works perfectly on the team level

# Видеокасты

<https://tutsplus.com/2012/04/frequent-screencasting-pitfalls/>
<https://tutsplus.com/2012/10/7-common-screencasting-techniques-that-drive-me-nuts/>
<https://tutsplus.com/course/professional-screencasting-for-the-rest-of-us/>

  - Нулевой лекцией можно показать результат, когда все настроено и работает
  - Первая лекция должны быть про то, как сконфигурить Eclipse и все окружение
    - Скачать нужную версию самого Eclipse
    - Поставить нужные плагины: сейчас это инструменты Google
    - Настроить текстовый редактор: включить номера строк, шрифт
    - Создать простенький JUnit тест
  - Поставить систему контроля версий и залиться
    - Какие файлы нужно заливать, а какие нет
  - Последней лекцией можно рассказать про реальную жизнь
    - Почитать пример Contacts от Google
    - Показать код на C#
    - Все-таки выбирая между C#, Java, Python или Ruby ты сразу ограничиваешь себя
    - GWT is meant for applications rather than websites. Generally with the
      intent of developing a desktop replacement webapp.
  - Стоит опубликовать на YouTube и подумать про публикацию на Хабре
