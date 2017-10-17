package mvc.oldBalance.control;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.command.CommandNull;
import mvc.oldBalance.command.MainCommand;
import mvc.oldBalance.command.CommandLogin;
import mvc.oldBalance.command.CommandMain;
import mvc.oldBalance.command.CommandException;

public class MainControl extends HttpServlet{
	private HashMap commandMap;
	private String	jspDir = "/OldBalance/";
	private String  error = "error.jsp";
	
	
	public MainControl() {
		super();
		initCommand();
	}
	
	private void initCommand() {
		commandMap = new HashMap();
		
		commandMap.put("login", new CommandNull("oldBalanceLogin.jsp"));
		commandMap.put("register", new CommandNull("oldBalanceRegister.jsp"));
//		commandMap.put("input-member", new CommandRegister("oldBalanceRegisterForm.jsp"));
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
			cmdKey = "input-Form";
		}

		MainCommand cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (MainCommand)commandMap.get( cmdKey);
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