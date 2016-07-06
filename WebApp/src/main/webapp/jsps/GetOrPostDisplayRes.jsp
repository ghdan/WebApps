<html>
<head>
<title>Using GET and POST Method to Read Form Data</title>
</head>
<body>
	<center>
		<h1>Using POST(now) Method to Read Form Data</h1>
		<ul>
			<li><p>
					<b>First Name:</b>
					<%= 
					request.getParameter("first_name")
					%>
				</p></li>
			<li><p>
					<b>Last Name:</b>
					<%=request.getParameter("last_name")%>
				</p></li>
		</ul>
		<br>
		<br>
		<br>

		<h1>Reading Checkbox Data</h1>
		<ul>
			<li><p>
					<b>Maths Flag:</b>
					<%=request.getParameter("maths")%>
				</p></li>
			<li><p>
					<b>Physics Flag:</b>
					<%=request.getParameter("physics")%>
				</p></li>
			<li><p>
					<b>Chemistry Flag:</b>
					<%=request.getParameter("chemistry")%>
				</p></li>

		</ul>

		<br>
		<br>
		<br>
		<br>
		<br>--------------------------------------<br>
		<h1>Reading All Form Parameters / other method</h1>
		<%@ page import="java.io.*,java.util.*"%>
		<br>
		<br>
		<br>

		<center>
			<h2>HTTP Header Request Example</h2>
			<table width="100%" border="1" align="center">
				<tr bgcolor="#949494">
					<th>Param Name</th>
					<th>Param Value(s)</th>
				</tr>
				<%
					Enumeration paramNames = request.getParameterNames();
				
					while (paramNames.hasMoreElements()) {
						String paramName = (String) paramNames.nextElement();
						out.print("<tr><td>" + paramName + "</td>\n");
						//get PARAMETER, not Header, ..
						String paramValue = request.getParameter((String)paramName.toString());
						out.println("<td> " + paramValue + "</td></tr>\n");
					}
				%>
			</table>
		</center>
</body>
</html>