<%@page contentType="text/xml; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>

<%
System.out.println("asdfasdfasdf");
String driver="oracle.jdbc.driver.OracleDriver";
String user="scott";
String pass="tiger";
String dbURL="jdbc:oracle:thin:@192.168.0.155:1521:orcl";


String rtn_xml = "";

	Class.forName(driver);
	Connection connection=DriverManager.getConnection(dbURL,user,pass);
	String	id = request.getParameter("id");
	String	first = request.getParameter("first");
	String	last = request.getParameter("last");
	String sql = "select order_num, prod_name, order_date, prod_price, pay_state " +
			" from ob_order o, ob_product p " +
			" where o.prod_id = p.prod_id and o.cust_id = ? " +
			" and to_char(order_date, 'YYYY-MM-DD') between ? and ?";
	
	PreparedStatement ps = connection.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, first);
	ps.setString(3, last);
	ResultSet rs = ps.executeQuery();	
	
	while(rs.next()) {
		rtn_xml += rs.getString("order_num") + "/" + rs.getString("prod_name") + "/" + rs.getString("order_date") + "/"
				+ rs.getInt("prod_price") + "/" + rs.getString("pay_state") + ".";
	}
	
	rs.close();
	connection.close();
	
	out.write(rtn_xml);
%>