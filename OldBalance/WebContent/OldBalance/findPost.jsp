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
	String	type = request.getParameter("type");
	String	date = request.getParameter("date") + "%";
	String sql = "SELECT 우편번호, 시도, 시군구, 도로명, 지번본번 FROM post WHERE " + type + " LIKE ?";
	
	PreparedStatement ps = connection.prepareStatement(sql);
	ps.setString(1, date);
	ResultSet rs = ps.executeQuery();	
	
	while(rs.next()) {
		rtn_xml += rs.getInt("우편번호") + "." + rs.getString("시도") + "." + rs.getString("시군구") + "." + rs.getString("도로명")
		+ "." + rs.getInt("지번본번") + "/";
	}
	
	rs.close();
	connection.close();
	
	out.write(rtn_xml);
%>