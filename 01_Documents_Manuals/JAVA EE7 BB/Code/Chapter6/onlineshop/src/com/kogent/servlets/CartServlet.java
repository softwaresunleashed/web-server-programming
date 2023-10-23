package com.kogent.servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.kogent.business.*;
import com.kogent.data.*;

public class CartServlet extends HttpServlet
{
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		String productCode = request.getParameter("productCode");
		String quantityAsString = request.getParameter("quantity");
		HttpSession session = request.getSession();

		synchronized(session)
		{
			Cart cart = (Cart) session.getAttribute("cart");
			if (cart == null)
			{
				cart = new Cart();
				session.setAttribute("cart", cart);
			}

			//if the user enters a negative or invalid quantity,
			//the quantity is automatically reset to 1.
			int quantity = 1;
			try
			{
				quantity = Integer.parseInt(quantityAsString);
				if (quantity < 0)
					quantity = 1;
			}
			catch(NumberFormatException nfe)
			{
				quantity = 1;
			}

			ServletContext sc = getServletContext();
			String path = (String) sc.getAttribute("productsPath");
			Product product = ProductIO.getProduct(productCode, path);
			LineItem lineItem = new LineItem();
			lineItem.setProduct(product);
			lineItem.setQuantity(quantity);
			if (quantity > 0)
			cart.addItem(lineItem);
			else if (quantity <= 0)
			cart.removeItem(lineItem);
			session.setAttribute("cart", cart);
			String url = "/CartNxtServlet";
 			RequestDispatcher dispatcher = 
 			getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws 	ServletException, IOException
	{
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 		ServletException, IOException
	{
		processRequest(request, response);
	}
   
	@Override
	public String getServletInfo()
	{
		return "Short description";
	}
	// </editor-fold>
}
