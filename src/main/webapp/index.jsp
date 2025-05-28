<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order Pizza</title>
    <link rel="stylesheet" href="styles/styles.css">
</head>
<body>
    <form action="order" method="get">

        <label for="pizzas">Выберите пиццу:</label>
        <select id="pizzas" name="pizzas">
            <option value="Маргарита">Маргарита</option>
            <option value="Четыре сыра">Четыре сыра</option>
            <option value="Капричоза">Капричоза</option>
            <option value="Гавайская">Гавайская</option>
        </select>
        <br>
        <label for="name">Укажите имя:</label>
        <input type="text" id="name" name="name">
        <br>
        <label for="phone">Укажите телефон:</label>
        <input type="number" id="phone" name="phone">
        <br>
        <label for="email">Укажите Email:</label>
        <input type="email" id="email" name="email">
        <br>
        <label for="address">Укажите адрес доставки:</label>
        <input type="text" id="address" name="address">
        <br>
        <Label>Выберите добавки:</Label>
        <br>
        <input type="checkbox" id="olive" name="olive"><label for="olive">Оливки</label>
        <br>
        <input type="checkbox" id="cheese" name="cheese"><label for="cheese">Сыр</label>
        <br>
        <input type="checkbox" id="capers" name="capers"><label for="capers">Каперсы</label>
        <br>
        <input type="submit" value="Сделать заказ">
    </form>
    <br>

    <button><a href="createPizza.jsp">Собрать свою пиццу</a></button>
</body>
</html>
