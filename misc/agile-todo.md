# 2019
  - проект-шаблон для практики
    - Вторая лаба
      - починить/удалить legacy проект с формой в IDEA
      - почему ViewModel зависит от JavaFX?
        - scenebuilder 2.0 https://www.oracle.com/technetwork/java/javase/downloads/javafxscenebuilder-info-2157684.html
        - VM Options: `--module-path /Users/kkornia/Work/unn/agile/javafx-sdk-11.0.2/lib/ --add-modules javafx.fxml,javafx.controls`
    - optional
      - good ones
        - увеличить покрытие
        - rename kirill-korniakov=>complex-number
        - почистить и откомментировать build.gradle
      - есть другой плагин для code coverage (cobertura https://github.com/kt3k/coveralls-gradle-plugin)
      - CPD должен падать (в случае copy&paste) до запуска unit tests

- Путевые заметки от 2019-10
  - gold configuration
    - Gradle 5.1.1 (версия, доступная по умолчанию на Travis)
    - brew cask java11 on Mac, openjdk11 on Travis
    - скачать и поставить javafx-sdk-11.0.2, потом установить envvar JFXRT_HOME
        - $ echo $JFXRT_HOME
        - /Users/kkornia/Work/unn/agile/agile-course-practice/javafx-sdk-11.0.2/lib
    - [+] JavaFX
    - [+] jacoco
    - [+] CPD
    - [-] PMD
  - проект работает с Gradle 4.0.1 и oracle-jdk8, который берется с сайта Oracle (brew его уже не дает)
  - попытка с новыми зависимостями
    - brew по умолчанию дает Gradle 5.6.2
    - travis по умолчанию дает Gradle 5.1.1
    - пробуем с oracle-jdk, поскольку он приносит меньше изменений
      - итог: 13я java требует Gradle 6, более старые версии непонятно как скачать
    - с java11 из openjdk работает, нет только javafx
    - CPD не работает с Gradle 5.6.2, работает с 5.1.1

# 2018
    - lab preps
        - done
            - ctor
                + запросить списки групп
                + найти интеграционных менеджеров
            + update lab0&lab1 instructions
                + proper version of Java: https://www.oracle.com/technetwork/java/javafxscenebuilder-1x-archive-2199384.html
                + написание своего теста (удалить README отовсюду)
                + требовать локального запуска тестов в нулевой лабе
                + Требовать включения Тревиса для своего форка и рекомендовать это для других лаб
            + try import and GUI editor in IDEA
            + update badges: gitter (only update the year), travis, coveralls
            + squash history and move to public
            + delete other modules
            + setup cache for gradle
            + define COVERALLS_REPO_TOKEN in Travis UI (get token from Coveralls)
        - good ones
            - enable appveyor
            - fix Gradle issue: ConfigurableReport.setDestination(Object)
            - add tests to get 100% coverage
        - lab 2&3 guides
            - add TOCs
            - switch to soft wrap
            - cleanup grammar and formatting
        - use newer dependencies
        - complete ComplexNumber class implementation according to README
        - korniakov-kirill => complex-number
        - ideas
            - create single Model layer for everybody
            - переделать лабы на язык Kotlin
# Cache
    - _вставить обложки книг в каждую лекцию (можно на титульные слайды)_
    - залить слайды по модульному тестированию и контрольные вопросы
    - выбрать интеграционных менеджеров
    - реализовать питоновский скрипт, который подсвечивает номера пулл-реквестов
      в таблице
    - послать задание студентам
        - попросить список групп
    - optional
        - PMD workarounds
        - increase code coverage
  - Remote pair-programming <https://floobits.com>
  - agile
    - Замечания к описаниям лаб
      - Генерация проекта IDEA
      - Работа в той же папке

  - _Выровнять вопросы между лекциями и файлом_
  - Интегрировать код Антона (все его лабы)
  - Можно лекции расщепить на методологию и технологию, и нумеровать уже внутри
    этих двух групп. Тогда не будет путаницы с порядком лекций и вопросов.

# Улучшить описания лабораторных

  - Создать раздел про типичные ошибки в каждой лабе
  - Описать добавление `upstream`

  - Применять `check.py` к проверке описаний лабораторок
  - Нулевая лаба должна просто ссылаться на лабу из курса `devtools`
  - Подумать про публикацию Javadoc (<http://stackoverflow.com/questions/15347808/display-javadocs-on-github>)

# Лекции / Содержание курса

  - Lecture 1: Intro

  - Lecture 2: Clean Code

  - Общие замечания
    - Посмотреть набор материалов для курса Системная архитектура,
      использовать как пример
    - Детально продумать примеры проектов, и уже на них все иллюстрировать
    - Первую лекцию можно делать чисто вводную, поскольку времени мало,
      там можно читать про объем методологии

  - Локальные улучшения
    - SOLID: на закон Деметера <http://googletesting.blogspot.ru/2008/07/breaking-law-of-demeter-is-like-looking.html>
    - Lean: Разница между принципами и практиками (из Поппендик), добавить такой
      вопрос
    - ?: Понятие антипаттерна <http://en.wikipedia.org/wiki/Anti-pattern#Software_design_anti-patterns>
      - <http://habrahabr.ru/post/43761/>
      - <http://c2.com/cgi/wiki?AntiPatternsCatalog>

# Программа курса
  - В следующий раз перекрывать теорию с практикой, чтобы делать лабораторные в нормальном ритме
  - Перейти на новый ритм - одна лаба в месяц

  - Разобрать старые пометки
    - Пересмотреть программу курса исходя из имеющихся книг
    - Разобрать пометки в книге Ханта? Этвуда?
    - Изучить что написано в блокноте
    - Нужна лекция про дизайн (нужно ли когда теперь есть целый курс, кстати
      нужно поговорить на эту тему с Мееровым)

  - Разобрать фидбеки
    - Посмотреть то, что лежит в репозитории (замечания с Redmine и так далее)
    - Разобрать feedback от студентов. 2013 год
      <https://docs.google.com/spreadsheet/ccc?key=0AsBBkrQIoSbjdE8tZDJNRnBLNFdJcDlHdHY0UlRBNlE&usp=drive_web#gid=0>

  - Check links
    - разные манифесты <http://blog.byndyu.ru/2013/09/it.html>
    - <http://en.wikipedia.org/wiki/Composition_over_inheritance>
    - SOLID: <http://blog.byndyu.ru/2009/10/solid.html#.UleeRtIvlnw>
    - XP in images <http://www.threeriversinstitute.org/XPInPictures.html>
    - <http://vimeo.com/34365549>
    - <http://code.google.com/p/ndddsample/>
    - <http://stackoverflow.com/questions/152120/are-there-any-open-source-projects-using-ddd-domain-driven-design>
