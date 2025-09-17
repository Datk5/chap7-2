package controllers;

import business.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        String action = request.getParameter("action");
        if (action == null) action = "";

        switch (action) {
            case "Add To Cart":
                String code = request.getParameter("code");
                String desc = request.getParameter("description");
                double price = Double.parseDouble(request.getParameter("price"));
                Product product = new Product(code, desc, price);

                LineItem item = new LineItem(product, 1);
                cart.addItem(item);
                break;

            case "Update":
                code = request.getParameter("code");
                int quantity = 1;
                try {
                    quantity = Integer.parseInt(request.getParameter("quantity"));
                } catch (NumberFormatException e) {
                    quantity = 1;
                }
                cart.updateItem(code, quantity);
                break;

            case "Remove Item":
                code = request.getParameter("code");
                cart.removeItem(code);
                break;
        }

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/cart.jsp");
        rd.forward(request, response);
    }
}
