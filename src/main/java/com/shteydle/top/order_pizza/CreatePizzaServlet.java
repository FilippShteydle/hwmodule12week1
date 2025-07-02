package com.shteydle.top.order_pizza;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "createPizzaServlet", value = "/create_pizza")
public class CreatePizzaServlet extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, String> sauces = new HashMap<>();
        Map<String, String> fillings = new HashMap<>();

        List<String> pizza = new ArrayList<>();

        sauces.put("Томатный", req.getParameter("tomatoes"));
        sauces.put("Сырный", req.getParameter("cheeses"));
        sauces.put("Сливочный", req.getParameter("creamy"));


        fillings.put("Колбаски", req.getParameter("sausages"));
        fillings.put("Креветки", req.getParameter("shrimp"));
        fillings.put("Ветчина", req.getParameter("ham"));
        fillings.put("Цыпленок", req.getParameter("chicken"));
        fillings.put("Грибы", req.getParameter("mushrooms"));
        fillings.put("Халапенье", req.getParameter("jalapeno"));
        fillings.put("Томаты", req.getParameter("tomato"));
        fillings.put("Ананас", req.getParameter("pineapple"));

        String sauce = "";
        for(String key : sauces.keySet()) {
            if (sauces.get(key) != null) {
                sauce += key + " ";
            }
        }

        String filling = "";
        for (String key : fillings.keySet()) {
            if (fillings.get(key) != null) {
                filling += key + " ";
            }
        }

        pizza.add("Тесто " + req.getParameter("dough"));
        pizza.add("Ваш соус " + sauce);
        pizza.add("Ваши начинки " + filling);



        req.setAttribute(
                "message", pizza);

        req.getRequestDispatcher("/designOrder.jsp").forward(req, resp);

    }
}
