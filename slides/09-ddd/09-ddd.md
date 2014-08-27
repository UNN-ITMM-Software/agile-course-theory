# Domain-Driven Design (DDD)


# План

 - Domain
 - Варианты DDD-архитектуры
 - Слои и их отношения
 - Преимущества DDD


# Разработка ПО

ТЗ => \
    Архитектура => \
        Работающий Код => \
              Заказчик счастлив => \
                  $100500 млн. ;)

# Фокус на Domain

 - Экспертов предметной области в команду
 - Строим дерево сущностей
 - Архитектура не зависит от технологий


# Layered Architecture

![](./images/lay_arch.png)

# Dependency Injection

``` java
public class Copy{
    void copy(File f, Printer p){
        while(!f.eof()){
            p.write(f.read());
    }
}
```

# Dependency Injection

``` java
public class Copy{
    void copy(IReader r, IWriter w){
        while(!r.end()){
            w.write(r.read());
    }
}
```
# Architecture

![](./images/arch.png)

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

# Что дает DDD

 - Чистый и правильно спроектированный домен
 - Инкапсуляцию доменной логики
 - Понимание кода

# Спасибо!

Вопросы?