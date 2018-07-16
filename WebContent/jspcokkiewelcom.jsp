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
   // Create cookies for first and last names.      
   Cookie myuname = new Cookie("username",request.getParameter("username"));
   Cookie mymessage = new Cookie("message",request.getParameter("message"));

   // while creating a cookie you can specify when the values will be deleted i.e age of that values in 
   // memory
   myuname.setMaxAge(60*60); 
   mymessage.setMaxAge(60*60); 

   // Add both the cookies in the response header.
   response.addCookie( myuname );
   response.addCookie( mymessage );
%>
</br>
Let see what we have added to cookies
</br>
<b>Name:</b><%= request.getParameter("username")%><br/>
</br>
<b>Mesage :</b><%= request.getParameter("message")%>
</br>

Hit go button to go to next page where we will read cookies
     <form action="jspcokkieread.jsp">  
  
    <input type="submit" value="go"><br/>  
    </form>


</body>
</html>