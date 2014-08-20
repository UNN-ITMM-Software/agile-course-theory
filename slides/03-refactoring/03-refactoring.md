# Рефакторинг

![](./images/book.png)

Антон Бевзюк, Кирилл Корняков, Андрей Морозов

Сентябрь 2013

<!-- TODO
  - Вставить картинку про рефакторинг набегами
  - Подумать про вывеску, представлять контекст
-->

# Что такое рефакторинг?

> "Изменение внутренней структуры программы без изменений ее видимого поведения
> с целью облегчить понимание и удешевить модификацию."

М. Фаулер

+-----------------------+------------------------+
||![](./images/beck.png)|![](./images/fowler.png)|
+-----------------------+------------------------+

#

<center>
![](./images/tophat.svg)

Джон Томпсон, шляпных дел мастер,
изготавливает и продает шляпы
за наличный расчет
</center>

#

<center>
![](./images/tophat.svg)

Джон Томпсон, <strike>шляпных дел мастер,</strike>
изготавливает и продает шляпы
за наличный расчет
</center>

#

<center>
![](./images/tophat.svg)

Джон Томпсон,
<strike>изготавливает и</strike> продает шляпы
за наличный расчет
</center>

#

<center>
![](./images/tophat.svg)

Джон Томпсон,
продает шляпы
<strike>за наличный расчет</strike>
</center>

#

<center>
![](./images/tophat.svg)

Джон Томпсон,
<strike>продает шляпы</strike>
</center>

#

<center>
![](./images/tophat.svg)

## Джон Томпсон
</center>

# Что побуждает нас рефакторить?

* Упростить добавление нового кода
* Улучшить дизайн существующего кода
* Достичь лучшего понимания кода

# Долги проектирования

![](./images/debt.png)

# Процесс рефакторинга
* Удаление дублирования
* Упрощение сложной логики
* Прояснение непонятного кода

# Помощники
* Автоматические тесты
* Маленькие шаги

# Code Smells

![](./images/code_smells.png)

# Code Smells

![](./images/code_smells2.png)

# Refactorings Catalog

![](./images/refactoring_catalog.png)

# Любимые рефакторинги
* Rename Method
* Extract Method
* Extract Class
* Extract Interface
* Extract Superclass
* Move Method
* Decompose Conditional

# Удобочитаемый код (DSL)

``` java
new DateTime(2009, 11, 12)

public static DateTime of2009(this double ddMM) {
   var day = (int) Math.Round(ddMM, 0);
   var month = (int) Math.Round(ddMM*100, 0) - day * 100;
   return new DateTime(2009, month, day);
}

12.11.of2009();
```

# Удобочитаемый код

``` java
var month = new CalendarMonth(2009, 10);

var month = Oct.of2009();

internal static class Oct {
    public static CalendarMonth of2009 {
        get { return new CalendarMonth(2009, 10); }
    }
}

```

# Удобочитаемый код
``` java
var customer = new Customer();
customer.Name = “Vasya Pupkin”;
var order = new Order();
order.Customer = customer;
order.Date = new DateTime(2009, 10, 11);
var orderItem = new orderItem();
orderItem.Product = new Product("Lays");
orderItem.Amount = 3;
orderItem.Price = 45.30;
order.Items.Add(orderItem);
orderItem.Product = new Product("Beer");
orderItem.Amount = 3;
orderItam.Price = 20.50;
order.Items.Add(orderItem);
```

# Удобочитаемый код
``` java
var order = new OrderBuilder()
.WithCustomer(“Vasya Pupkin”)
.WithDate(11.10.of2009())
.WithLineItem()
.WithProduct(“Lays”)
.WithAmount(3)
.WithPrice(45.30)
.WithLineItem()
.WithProduct(“Beer”)
.WithAmount(3)
.WithPrice(20.50)
.GetResult();
```

# Книги

* Martin Fowler - Refactoring: Improving the Design of Existing Code
* Joshua Kerievsky - Refactoring to Patterns
* Martin Fowler - Patterns of Enterprise Application Architecture

# Контрольные вопросы

  1. Определение рефакторинга и его цели.
  1. Примеры запахов и способы их устранения (3-5 примеров).
  1. Понятие технического долга.

# Спасибо!

Вопросы?
