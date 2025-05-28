<%--
  Created by IntelliJ IDEA.
  User: shteydle.f
  Date: 20.05.2025
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Конструктор пиццы</title>
</head>
<body>
<form action="create_pizza" method="get">
    <label>Какое тесто предпочитаете:</label>
    <br>
    <input type="radio" name="dough" id="yeast" value="Дрожжевое" checked>
    <label for="yeast">Дрожжевое</label>
    <br>
    <input type="radio" name="dough" id="yeast-free" value="Бездрожжевое">
    <label for="yeast-free">Бездрожжевое</label>
    <br>
    <br>
    <label>Выберите соусы:</label>
    <input type="checkbox" id="tomatoes" name="tomatoes"><label for="tomatoes">Томатный</label>
    <input type="checkbox" id="cheeses" name="cheeses"><label for="cheeses">Сырный</label>
    <input type="checkbox" id="creamy" name="creamy"><label for="creamy">Сливочный</label>
    <br>
    <br>
    <label>Выберите начинку:</label>
    <br>
    <input type="checkbox" id="sausages" name="sausages"><label for="sausages">Колбаски</label>
    <input type="checkbox" id="shrimp" name="shrimp"><label for="shrimp">Креветки</label>
    <br>
    <input type="checkbox" id="ham" name="ham"><label for="ham">Ветчина</label>
    <input type="checkbox" id="chicken" name="chicken"><label for="chicken">Цыпленок</label>
    <br>
    <input type="checkbox" id="mushrooms" name="mushrooms"><label for="mushrooms">Грибы</label>
    <input type="checkbox" id="jalapeno" name="jalapeno"><label for="jalapeno">Халапеньо</label>
    <br>
    <input type="checkbox" id="tomato" name="tomato"><label for="tomato">Томаты</label>
    <input type="checkbox" id="pineapple" name="pineapple"><label for="pineapple">Ананас</label>
    <br>
    <input type="submit" value="Приготовить пиццу">

</form>

</body>
</html>
