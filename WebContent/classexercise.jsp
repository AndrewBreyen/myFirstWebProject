<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String error1 = request.getParameter("Error1");
	String error2 = request.getParameter("Error2");
	String name = request.getParameter("name");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classexcersise</title>
</head>


<body>

	<%if (name != null)
	 out.println("Hello, "+name); %>
	Please enter the dimensions of the desired table below:
	<br>
	<br>
	<br>
	<h1>
		<%
			if (error1 != null)
				out.println("ERROR!!! "+name+" Rows must be < 0");
			if (error2 != null)
				out.println("ERROR!!! "+name+" Columns must be < 0");
		
		%>
	</h1>
	<form method="get" action="createtable.jsp" name="myForm">
		<table style="text-align: left; width: 100%;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Enter your name:<br>
					</td>
					<td style="vertical-align: top;"><input name="name"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Enter number of rows:<br>
					</td>
					<td style="vertical-align: top;"><input name="rows"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Enter number of columns:<br>
					</td>
					<td style="vertical-align: top;"><input name="columns"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><input name="submit"
						type="submit"><br></td>
					<td style="vertical-align: top;"><input name="reset"
						type="reset"><br></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>


</body>
</html>