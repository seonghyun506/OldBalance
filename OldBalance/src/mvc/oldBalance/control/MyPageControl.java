package mvc.oldBalance.control;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.command.CommandNull;
import mvc.oldBalance.command.CommandProductDetail;
import mvc.oldBalance.command.CommandProductList;
import mvc.oldBalance.command.CommandProductMG;
import mvc.oldBalance.command.CommandSelectCart;
import mvc.oldBalance.command.CommandmNull;
import mvc.oldBalance.command.MyPageCommand;
import mvc.oldBalance.command.ProductCommand;
import mvc.oldBalance.command.CommandDirectOrder;
import mvc.oldBalance.command.CommandException;
import mvc.oldBalance.command.CommandMyPage;

public class MyPageControl extends HttpServlet{
	private HashMap commandMap;
	private String	jspDir = "/OldBalance/";
	private String  error = "error.jsp";
	
	
	public MyPageControl() {
		super();
		initCommand();
	}
	
	private void initCommand() {
		commandMap = new HashMap();
		
		commandMap.put("mypage", new CommandMyPage("oldBalanceMyPage.jsp"));
		commandMap.put("cart", new CommandmNull("oldBalanceCart.jsp"));
		commandMap.put("selectCart", new CommandSelectCart("oldBalanceOrder.jsp"));
		commandMap.put("direct-order", new CommandDirectOrder("oldBalanceOrder.jsp"));
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");
		if( cmdKey == null ){
			cmdKey = "mypage";
		}

		MyPageCommand cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (MyPageCommand)commandMap.get( cmdKey);
			}else{
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}

			nextPage = cmd.execute( request, response  );

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}
}