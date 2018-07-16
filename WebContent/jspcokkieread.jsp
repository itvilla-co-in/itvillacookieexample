<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   Cookie cookie = null;
   Cookie[] cookies = null;
   cookies = request.getCookies();
   if( cookies != null ){
      for (int i = 0; i < cookies.length; i++){
         cookie = cookies[i];
         out.print("Lets see name of cookie: " + cookie.getName( ) + ",  ");
         out.print("Lets see value of cookie: " + cookie.getValue( )+" <br/>");
      }
  }else{
      out.println("<h2>There are not cookies stored</h2>");
  }
%>

You can explore more cookie methods. 

</body>
</html>