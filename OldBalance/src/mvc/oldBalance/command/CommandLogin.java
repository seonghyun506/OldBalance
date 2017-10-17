package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandLogin implements MainCommand {
	private String next;
	
	public CommandLogin(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String imsi[] = request.getParameter("path").split("/");
		
		String id = request.getParameter("ID");
		String pwd = request.getParameter("PWD");
		
		MainService service = MainService.getInstance();
		int result = service.checkMember(id, pwd);
		
		if(result != 0) {
			if(imsi.length == 6) {next = imsi[5];}
			else {
				String im[] = imsi[4].split("=");
				
				if(im[1].equals("register")) {next = "oldBalanceRegister.jsp";}
				else if(im[1].equals("login")) {next = "oldBalanceLogin.jsp";}
				else if(im[1].equals("main")) {next = "oldBalanceMain.jsp";}
			}
		} else { next = "oldBalanceLoginForm.jsp"; }
		
		return next;
	}
}