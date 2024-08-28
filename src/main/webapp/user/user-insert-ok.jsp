<%@page import="test.web.common.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String uiId = request.getParameter("uiId");
String uiPwd = request.getParameter("uiPwd");
String uiName = request.getParameter("uiName");

Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "INSERT INTO USER_INFO(UI_ID, UI_PWD, UI_NAME,CREDAT, CRETIM)";
sql += "VALUES('"+uiId +"','" + uiPwd+ "','" + uiName +"',DATE_FORMAT(NOW(),'%Y%m%d'),";
sql += "DATE_FORMAT(NOW(),'%H%i%s'))";
int result = stmt.executeUpdate(sql);

if(result == 1){
	
}


%>
<%= "아이디 : " + uiId%><br>
<%= "비밀번호 : " + uiPwd %><br>
<%= "이름 : " + uiName %><br>

