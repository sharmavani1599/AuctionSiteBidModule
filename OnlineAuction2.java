

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OnlineAuction2")
public class OnlineAuction2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OnlineAuction2() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String itemid = request.getParameter("itemid");
		String itemname = request.getParameter("itemname");
		String name = request.getParameter("name");
		String emailid = request.getParameter("emailid");
		String amount = request.getParameter("amount");
		pw.print(itemid+itemname+name+emailid+amount);
		request.setAttribute("itemid", itemid);
		request.setAttribute("itemname", itemname);
		request.setAttribute("name", name);
		request.setAttribute("emailid", emailid);
		request.setAttribute("amount", amount);
		RequestDispatcher res=request.getRequestDispatcher("OnlineAuction3.jsp");
		res.forward(request, response);
		
	}

}
