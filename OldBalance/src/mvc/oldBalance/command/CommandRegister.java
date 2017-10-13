package mvc.oldBalance.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandRegister implements RegisterCommand {
	private String next;
	
	public CommandRegister(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ObMember member = new ObMember();
		
		String	addr = request.getParameter("addr");
		String	detailAddr = request.getParameter("detailAddr");
		String	custAddr = addr + "/" + detailAddr;
		
		member.setCustId(request.getParameter("id"));
		member.setCustPw(request.getParameter("password"));
		member.setCustPost(Integer.parseInt(request.getParameter("post")));
		member.setCustAddr(custAddr);
		member.setCustTel(request.getParameter("telnum"));
		member.setCustMig(0);
		
		RegisterService service = RegisterService.getInstance();
		service.insertMember(member);
		
		return next;
	}
}