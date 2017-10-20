package mvc.oldBalance.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandCart implements CartCommand {
   private String next;
   
   public CommandCart(String _next) {
      next = _next;
   }
   
   public String execute(HttpServletRequest request, HttpServletResponse response) {
      
      String id = request.getParameter("id");
      CartService service = CartService.getInstance();
      
      List<ObCart> cartlist = service.getInstance().selectCartPage(id); 
      request.setAttribute("paran", cartlist);
      
      return next;
   }
}