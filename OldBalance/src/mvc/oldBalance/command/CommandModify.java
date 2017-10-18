package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandModify implements ModifyCommand {
	private String next;
	
	public CommandModify(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		
		ModifyService service = ModifyService.getInstance();
		
		List <ObMember> modifylist = service.selectModify(id);	
	    request.setAttribute("param", modifylist );
	    
		return next;
	}
	
}