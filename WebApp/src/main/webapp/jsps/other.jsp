	<%
		int colr = 0x95d860;
		for (int fontSize = 2; fontSize <= 8; fontSize += 2, colr >>= 3) {
	%>
	font=<%=fontSize%> &nbsp; <font color="<%=colr%>" size="<%=fontSize%>"> JSP Font is pair t-c </font>
	<br>
	<%
		}
	%>