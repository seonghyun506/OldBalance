package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandModifyUpdate implements ModifyCommand {
	private String next;
	
	public CommandModifyUpdate(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
			ObMember mem = new ObMember();  //여기까지
			mem.setCustId(request.getParameter("id"));//아이디
			mem.setCustPw(request.getParameter("newpwd"));//새비밀번호

			String ftel=request.getParameter("firstnum");
			String stel=request.getParameter("secondnum");
			String ttel=request.getParameter("thirdnum");
			String ptel=ftel+"-"+stel+"-"+ttel;
			mem.setCustTel(ptel);//전화번호
			
			//우편번호
			mem.setCustPost(Integer.parseInt(request.getParameter("postnum")));
			
			//주소
			String addr1=request.getParameter("addr1");
			String addr2=request.getParameter("addr2");
			String addr=addr1+"/"+addr2;
			mem.setCustAddr(addr);
			
		
		ModifyService service = ModifyService.getInstance();
		service.updateModify(mem);
	    
		return next;
	}
	
}