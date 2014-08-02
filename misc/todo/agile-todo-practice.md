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

# MVVM in Java
  - <http://en.wikipedia.org/wiki/Model_View_ViewModel#Java_MVVM_frameworks>
  - <http://books.zkoss.org/wiki/Small_Talks/2012/August/MVVM_In_Java>
  - <http://www.codeproject.com/Articles/166952/MVVM-in-Android>
  - <http://www.theserverside.com/discussions/thread.tss?thread_id=63653>

# GWT
  - GWT's mission is to radically improve the web experience for users by
    enabling developers to use existing Java tools to build no-compromise AJAX
    for any modern browser.
  - GWT is meant for applications rather than websites.
  - Generally with the intent of developing a desktop replacement webapp.
  - <http://tech.slashdot.org/comments.pl?sid=622647&cid=24304149>
  - <http://www.javabeat.net/2011/11/what-is-model-view-presenter-mvp-in-gwt-application/>
