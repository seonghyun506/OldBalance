package mybatis.oldBalance.service;

import java.util.List;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.session.*;

public class CartService {
   private static CartService service;
   
   public static CartService getInstance() {
      if(service == null) service = new CartService();
      return service;
   }
   
   private CartService() {}
   
   CartRepository repo = new CartRepository();
   
   public List<ObCart> selectCartPage(String id) {
      return repo.selectCartPage(id);
   }
   
//   public int insertMember(ObMember member) {
//      return repo.insertMember(member);
//   }
   
//   public List<BoardRec> selectComment() {
//      return repo.selectComment();
//   }
   
}