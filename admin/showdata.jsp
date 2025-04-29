<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	List lst=  (List)request.getAttribute("data");
	for(int i=0;i<lst.size();i++)
	{
		Vector v1=(Vector)lst.get(i);
	
%>

<table>
<tr>
<td><%= v1.get(0)%></td>
<td><%= v1.get(1)%></td>
<td><%= v1.get(2)%></td>
<td><%= v1.get(3)%></td>
<td><%= v1.get(4)%></td>
<td><%= v1.get(5)%></td>
</tr>
</table>

<%} %>
</body>
</html>