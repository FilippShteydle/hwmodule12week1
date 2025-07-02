package com.shteydle.top.order_pizza;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "orderServlet", value = "/order")
public class OrderServlet extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String pizza = req.getParameter("pizzas");
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");

        String add = "";

        if (req.getParameter("olive") != null) {
            add += "оливки ";
        }
        if (req.getParameter("cheese") != null) {
            add += "сыр ";
        }
        if (req.getParameter("capers") != null) {
            add += "каперсы ";
        }

        if (add.isEmpty()) {
            add = "нет добавок";
        }

        req.setAttribute(
                "message", createMessage(name, pizza, add, phone, email, address));

        req.getRequestDispatcher("/order.jsp").forward(req, resp);
    }

    private String createMessage(String name, String pizza, String add, String phone, String email, String address) {
        return String.format("Уважаемый %s! Ваш заказ: пицца %s. Ваши добавки: %s. Ваши данные: телефон: %s, " +
                "Электронная почта: %s, Адрес доставки: %s.", name, pizza, add,phone, email, address);
    }
}
