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
	System.out.println("id>" + id);
	String sql = "select cust_tel, cust_post, cust_addr, cust_id from ob_member where cust_id = ?";
	
	PreparedStatement ps = connection.prepareStatement(sql);
	ps.setString(1, id);
	ResultSet rs = ps.executeQuery();	
	
	if(rs.next()) {
		rtn_xml = rs.getString("cust_id") + "/" + rs.getInt("cust_post") + "/" + rs.getString("cust_addr") + "/"
				+ rs.getString("cust_tel");
	}
	rs.close();
	connection.close();
	
	out.write(rtn_xml);
%>