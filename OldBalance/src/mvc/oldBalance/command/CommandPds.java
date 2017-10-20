package mvc.oldBalance.command;

import java.io.IOException;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import mvc.oldBalance.model.*;
import mybatis.oldBalance.service.*;

public class CommandPds implements PdsCommand {
	private String next;
	
	public CommandPds(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ObProduct product = new ObProduct();
		try {
//		Part descPart = request.getPart("description");
//		String description = readParameterValue(descPart);
		Part filePart = request.getPart("file");  //파일명
		String fileName = getFileName(filePart);  //파일명
//		product.setPicName(fileName);  //파일명 넣기
		String realPath = FileSaveHelper.save("C:\\yoonks\\webwork\\OldBalance_cp\\WebContent\\OldBalance\\upload",
				filePart.getInputStream());   //upload 파일 명
		product.setProdPath(realPath);
		}catch(Exception e) {}
		
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		String main = request.getParameter("main");
		String sub = request.getParameter("sub");
		String detail = request.getParameter("detail");

		product.setProdName(name);
		product.setProdPrice(price);
		product.setMainCate(main);
		product.setSubCate(sub);
		product.setDetailCate(detail);
		
		AddPdsItemService service = AddPdsItemService.getInstance();
		service.insertProduct(product);	
	    
		return next;
	}
	
	private String getFileName(Part part) throws UnsupportedEncodingException {
		for (String cd : part.getHeader("Content-Disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

	private String readParameterValue(Part part) throws IOException {
		InputStreamReader reader = new InputStreamReader(part.getInputStream(),"euc-kr");
		char[] data = new char[512];
		int len = -1;
		StringBuilder builder = new StringBuilder();
		while ((len = reader.read(data)) != -1) {
			builder.append(data, 0, len);
		}
		return builder.toString();
	}
	
}