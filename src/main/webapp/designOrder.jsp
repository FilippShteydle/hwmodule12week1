<%--
  Created by IntelliJ IDEA.
  User: shteydle.f
  Date: 20.05.2025
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <p>Ваша пицца:</p>
  <c:forEach var="item" items="${message}">
    <p><c:out value="${item}"/></p>
  </c:forEach>
  <br>
  <p>Введите данные для оформления заказа</p>

  <form action="thanks" method="get">
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
    <input type="submit" value="Оформить заказ">
  </form>
  </body>
</html>
