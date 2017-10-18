<%@page contentType="text/xml; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>

<%
String driver="oracle.jdbc.driver.OracleDriver";
String user="scott";
String pass="tiger";
String dbURL="jdbc:oracle:thin:@192.168.0.155:1521:orcl";


String rtn_xml = "0";

	Class.forName(driver);
	Connection connection=DriverManager.getConnection(dbURL,user,pass);
	String	telNum = request.getParameter("telNum");
	String sql = "select cust_id from ob_member where cust_tel = ?";
	
	PreparedStatement ps = connection.prepareStatement(sql);
	ps.setString(1, telNum);
	ResultSet rs = ps.executeQuery();	
	
	if(rs.next()) {
		rtn_xml = String.valueOf(rs.getInt("cust_id"));
	}
	
	rs.close();
	connection.close();
	
	out.write(rtn_xml);
%>