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
import mvc.oldBalance.command.ModifyCommand;
import mvc.oldBalance.command.MyPageCommand;
import mvc.oldBalance.command.ProductCommand;
import mvc.oldBalance.command.CommandException;
import mvc.oldBalance.command.CommandModify;
import mvc.oldBalance.command.CommandModifyUpdate;
import mvc.oldBalance.command.CommandMyPage;

public class ModifyControl extends HttpServlet{
	private HashMap commandMap;
	private String	jspDir = "/OldBalance/";
	private String  error = "error.jsp";
	
	
	public ModifyControl() {
		super();
		initCommand();
	}
	
	private void initCommand() {
		commandMap = new HashMap();
		
		commandMap.put("modify", new CommandModify("oldBalanceModify.jsp"));
		commandMap.put("modify-member", new CommandModifyUpdate("oldBalanceMyPage.jsp"));
		
		
//		commandMap.put("modify", new CommandmNull("oldBalanceModify.jsp")); //update
		
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
			cmdKey = "modify";
		}

		ModifyCommand cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (ModifyCommand)commandMap.get( cmdKey);
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