package mvc.oldBalance.control;

import java.io.IOException;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import mvc.oldBalance.command.CommandException;
import mvc.oldBalance.command.CommandLogin;
import mvc.oldBalance.command.CommandMyPage;
import mvc.oldBalance.command.CommandNull;
import mvc.oldBalance.command.CommandPds;
import mvc.oldBalance.command.CommandPdsDetail;
import mvc.oldBalance.command.CommandPdsList;
import mvc.oldBalance.command.CommandProductDetail;
import mvc.oldBalance.command.CommandProductFind;
import mvc.oldBalance.command.MyPageCommand;
import mvc.oldBalance.command.PdsCommand;
import mvc.oldBalance.model.ObMember;
import mvc.oldBalance.model.ObProduct;

public class FileUploadServlet extends HttpServlet {
	private HashMap commandMap;
	private String jspDir = "/OldBalance/";
	private String error = "error.jsp";

	public FileUploadServlet() {
		super();
		initCommand();
	}

	private void initCommand() {
		commandMap = new HashMap();

		commandMap.put("upload", new CommandPds("oldBalanceProductMG.jsp"));
		commandMap.put("pds-list", new CommandPdsList("oldBalanceProductList.jsp"));
		commandMap.put("pds-detail", new CommandPdsDetail("oldBalanceProductDetail.jsp"));
		commandMap.put("product-find", new CommandProductFind("oldBalanceProductFind.jsp"));
		commandMap.put("insert-review", new CommandProductDetail("oldBalanceProductDetail.jsp"));
		commandMap.put("insert-cart", new CommandProductDetail("oldBalanceProductDetail.jsp"));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		processRequest(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String contentType = request.getContentType(); ///
		String cmdKey = request.getParameter("cmd");
		if (cmdKey == null) {
			cmdKey = "upload";
		}

		PdsCommand cmd = null;

//		if (contentType != null && contentType.toLowerCase().startsWith("multipart/")) {
//
//			String uploadedItem = cmd.execute(request, response);
//			request.setAttribute("uploadedItem", uploadedItem);
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/OldBalance_cp/uploaded.jsp");
////			dispatcher.forward(request, response);
//		} else {
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/OldBalance_cp/invalid.jsp");
////			dispatcher.forward(request, response);
//		}

		try {

			if (commandMap.containsKey(cmdKey)) {
				cmd = (PdsCommand) commandMap.get(cmdKey);
			} else {
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}

			nextPage = cmd.execute(request, response);

		} catch (CommandException e) {
			request.setAttribute("javax.servlet.jsp.jspException", e);
			nextPage = error;
			System.out.println("오류 : " + e.getMessage());
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher(jspDir + nextPage);
		reqDp.forward(request, response);

	}

}
