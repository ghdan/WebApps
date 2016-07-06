<!DOCTYPE html>
<html>
<head>
<title>Hello World</title>
</head>
<body>
	Hello World!
	<br>

	<%-- JSP COMMENT - Not on Web Page Source Code--%>

	<%-- <%@ page import="java.io.*" %> --%>




	<%
		int i = 2;

		out.println("Your IP address is " + request.getRemoteAddr());
	%>
	<br> Today's date :
	<%=(new java.util.Date()).toLocaleString()%>
	<br>Var i :<%=i%>
	<br>
	<br>
	<br>
	<br>

	<%--
	<jsp:include page="other.jsp" flush="true" />
	if flush="true" , it will throw err: concurrent thread etc
	( it doesn't have enough time to do the operation or not
	the right order exec)
	
	else its fine
	
	 --%>

	
	<jsp:include page="date.jsp" flush="true" />
	<br>
	<% response.getBufferSize(); %>
	
	<%-- Not here, not enough time to get all done --%>
	<jsp:forward page="other.jsp" /> <%--  <%	pageContext.forward("other.jsp"); %>  --%>


</body>
</html>




<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> 
-->