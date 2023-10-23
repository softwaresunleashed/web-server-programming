package com.kogent.servlets;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.kogent.business.*;
import java.util.*;
public class CartNxtServlet extends HttpServlet 
{
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
		HttpSession session =request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Online Shop</title></head><body>");
		out.println("<h1>Items in Shopping Cart </h1>");
		Cart carts = (Cart) session.getAttribute("cart");
		ArrayList<LineItem> items = new ArrayList<LineItem>(); 
		items=  carts.getItems();
		out.println("<table border=1 cellpadding=5><tr><th>Quantity</th><th>Description</th><th>Price</th><th>Amount</th></tr>");
		for ( int i =0; i<items.size(); i++) {
 		out.println("<tr valign=top><td><form action=./cart method=post><input type=hidden name=productCode value=" + items.get(i).getProduct().getCode() + ">");
		out.println("<input type=text size=2 name=quantity value=" + items.get(i).getQuantity()+ ">");
		out.println("<input type=submit name=updateButton value=Update></form></td>");
		out.println("<td>" + items.get(i).getProduct().getDescription() + "</td>");
		out.println("<td>" + items.get(i).getProduct().getPrice() + "</td>");
		out.println("<td>" + items.get(i).getTotalCurrencyFormat() + "</td>");
		out.println("<td><form action=./cart method=post><input type=hidden name=productCode value=" + items.get(i).getProduct().getCode() + ">");
		out.println("<input type=hidden name=quantity value=0><input type=submit value=RemoveItem></form></td></tr>");
		}
		out.println("</table>");
		out.println("<br><form action=./Welcome method=post><input type=submit name=continue value=ContinueShopping></form>");
		out.println("<br><form action=./Checkout method=post><input type=submit name=Logoff value=Checkout></form>");
		out.println("</body></html>");
		out.close();
	} 

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws 
 	ServletException, IOException 
{
		processRequest(request, response);
	} 
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
 	ServletException, IOException 
{
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}
}
