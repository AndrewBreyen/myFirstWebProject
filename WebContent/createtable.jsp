<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String n = request.getParameter("name");
   String r = request.getParameter("rows");
   String c = request.getParameter("columns");
   int rows = Integer.parseInt(r);
   int cols = Integer.parseInt(c);
   
   
   
   if(rows<=0 )
	   response.sendRedirect("classexercise.jsp?Error1=row&name="+n);
   if(cols<=0 )
 	   response.sendRedirect("classexercise.jsp?Error2=col&name="+n);
  
   	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable</title></head><body style="color: white; background-color: rgb(2, 2, 2);" alink="#000099" link="#000099" vlink="#990099">

<% out.println("Hello, "+n+" Here is your table of rows "+r+" and "+c+" columns"); %>

<TABLE>

</TABLE>

<table style="text-align: left; width: 559px; height: 30px;" border="1" cellpadding="2" cellspacing="2">
  <% for(int row=1; row <= rows; row++) { %>
    <TR>
	<% for(int col=1; col<=cols; col++) { %>
        <TD> (<%=col%>, <%=row%>)
        </TD>
        <% } %>
    </TR>
<% } %>
</table>
<br>


</body></html>