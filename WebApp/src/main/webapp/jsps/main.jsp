<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<title>Using JavaBeans in JSP</title>
</head>
<body>
	<center>
		<h2>Using JavaBeans in JSP</h2>

		<jsp:useBean id="test" class="com.webapp.jspsClasses.TestBean" />

		<jsp:setProperty name="test" property="message" value="Hello JSP..." />

		<p>Got message....</p>

		<jsp:getProperty name="test" property="message" />
	</center>
	<br>
	<br>
	<br>
	<br>
	<br>


	<%@ page import="java.io.*,java.util.*"%>
	<center>
		<h2>HTTP Header Request Example</h2>
		<table width="100%" border="1" align="center">
			<tr bgcolor="#949494">
				<th>Header Name</th>
				<th>Header Value(s)</th>
			</tr>
			<%
				Enumeration headerNames = request.getHeaderNames();
				while (headerNames.hasMoreElements()) {
					String paramName = (String) headerNames.nextElement();
					out.print("<tr><td>" + paramName + "</td>\n");
					String paramValue = request.getHeader(paramName);
					out.println("<td> " + paramValue + "</td></tr>\n");
				}
			%>
		</table>
	</center>

<br><br><br><br><br>


<center>
<h2>Auto Refresh Header Example</h2>
<%
   // Set refresh, autoload time as 5 seconds
   response.setIntHeader("Refresh", 5);
   // Get current time
   Calendar calendar = new GregorianCalendar();
   String am_pm;
   int hour = calendar.get(Calendar.HOUR);
   int minute = calendar.get(Calendar.MINUTE);
   int second = calendar.get(Calendar.SECOND);
   if(calendar.get(Calendar.AM_PM) == 0)
      am_pm = "AM";
   else
      am_pm = "PM";
   String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
   out.println("Current Time is: " + CT + "\n");
%>
</center>


<%
   // Set error code and reason.
  // response.sendError(407, "Need authentication!!!" );
%>

</body>
</html>