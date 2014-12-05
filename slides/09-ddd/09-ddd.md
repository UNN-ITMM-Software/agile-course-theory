# Domain-Driven Design

  - Евгений Сорокин
  - Андрей Морозов
  - Кирилл Корняков

<!-- TODO
  - Вставить про луковую архитектуру
  - Вставить картинки Microsoft
-->

# Содержание

  - Введение
  - Варианты DDD-архитектуры
  - Слои и их отношения
  - Преимущества DDD

# Что является самым ценным в ПО?

  - UX / GUI
  - Современные технологии
  - Качественный код
  - Модель предметной области
  - Грамотная архитектура

# Eric Evans: Domain-Driven Desing

![](./pix/ddd-book.jpg)
![](./pix/EricEvans.jpg)

# Основные идеи

 - Общий язык
 - Выделенный домен

# Основные идеи

 - Помещение основного фокуса проекта на домен и его логику
 - Построение сложных дизайнов на основе модели домена
 - Интенсивное взаимодействие между командой и экспертами предметной области,
   чтобы итеративно улучшать модель
 - Архитектура не зависит от технологии

# Layered Architecture

![](./pix/lay_arch.png)

# Dependency Injection

```java
public class Copy{
    void copy(File f, Printer p){
        while(!f.eof()){
            p.write(f.read());
    }
}
```

# Dependency Injection

```java
public class Copy{
    void copy(IReader r, IWriter w){
        while(!r.end()){
            w.write(r.read());
    }
}
```

# Architecture

![](./pix/arch.png)

# Elements of DDD

![](./pix/ddd-elements.png)

# Слой Domain

Ответственность:

 - Представляет концепцию бизнеса
 - Инкапсулирует бизнес-логику и знания предметной области

Типичные классы:

 - Entities, Value Objects, Repositories, Factories, Services

Связь с другими слоями:

 - Domain используется в Presentation

# Слой Presentation

Ответственность:

 - Собирает ввод от пользователя из GUI
 - Управляет UI views
 - Транслирует объекты Domain в презентационные объекты

Типичные классы:

 - Presenters, Controllers, Translators, Интерфейсы для UI

Связь с другими слоями:

 - Управляет UI
 - Использует Domain и Infrastructure

# Слой Infrastructure

Ответственность:

 - Сохранение
 - ORM
 - Кэширование

Типичные классы:

 - Adapters, Translators, Service Agents, Facades, O/R Mappers

Связь с другими слоями:

 - Реализует интерфейсы, объявленные в Domain и Presentation

# Слой UI

Ответственность:

 - Показать информацию пользователю
 - Реализовать интерфейсы, объявленные в слое Presentation
 - Вызвать Application для создания объектов presenters и сделать инъекцию views

Типичные классы:

 - Web pages, Win Forms, User Controls

Связь с другими слоями:

 - Реализует интерфейсы, объявленные в Presentation
 - Вызывает Application для создания Presenters

# Слой Application

Ответственность:

 - Создает объекты Presentation, делает инъекцию UI и Infrastructure
 - Создает объекты Domain и делает инъекцию Infrastructure

Типичные классы:

 - ApplicationProfile, PresenterFactory

Связь с другими слоями:

 - Создает объекты Presentation, Domain и Infrastructure

# Необходимые условия

  - Нетривиальный домен
  - Команда имеет опыт с ООП/ООД
  - Имеется доступ к экспертам предметной области
  - Вы используете итеративный процесс

# Что дает DDD

 - Чистый и правильно спроектированный домен
 - Инкапсуляцию доменной логики
 - Понимание кода

#

![](./pix/customer-tests.png)

# Спасибо!

Вопросы?
