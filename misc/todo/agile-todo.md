# General
  - Разместить материалы курса отдельно от кодов студентов
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

# Лабораторные работы
  - Придумать 4ю лабу (веб или Android)
  - Тесты на `ViewModel` с логгером поместить в отдельный класс
  - Rename `FakeLogger` в `MockLogger`
  - Добавить пример на Observer в ViewModel
  - `private JTextArea log;`

  - Веб-интерфейс (посмотреть на <https://github.com/sander24/gradle-test-project>)
  - Создать контрольные списки для проверки каждой лабы
    - Никаких дурацких сокращений
    - Чистые тесты, хорошие имена для них
  - Вероятно "Задачи" стоит переименовать в требования
    - Выбрать полезные требования из новостей
  - С логированием все путаются. Нужно это все продумать и четко описать.
    - При переключении типа логирования теряется собственно лог
    - В файл сохраняют, но нельзя выбрать имя лога

Optional
  - Android клиент
  - Возможно задания на лабу стоит оформить в виде историй, чтобы и поиграть, и
    понятнее было

# Инфраструктура
  - Подумать какие вещи можно проверять автоматически
    - Включить проверку стиля (CPD), но нужно выбрать стиль
    - Автоматический поиск дублирующегося кода (commit script to the repo)
      - <http://docs.codehaus.org/display/GRADLE/Cookbook#Cookbook-usingPMD>
    - PMD умеет огромную кучу всего
    - Можно ли как-то запускать проверки, которые делает IDEA?
      - Ее предложения по упрощению кода.
      - Ненужные imports
    - Проверить что нет неправильных зависимостей
