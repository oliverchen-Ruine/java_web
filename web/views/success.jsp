<%--
  Created by IntelliJ IDEA.
  User: olive
  Date: 2020/9/28
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>success page</title>
</head>
<body>
<h3>User registration information is：</h3>
<%
    request.setCharacterEncoding("UTF-8");
    String [] strusertype = request.getParameterValues("usertype");
    out.print("The type of user:        ");
    for(int i=0;i<strusertype.length;i++){
        out.print(strusertype[i]);
    }
    String strusername = request.getParameter("username");
    String strpassword = request.getParameter("pwd1");
    String strphone = request.getParameter("phone_number");
    String stremail = request.getParameter("email_address");
    String strwaddress = request.getParameter("working_address");
%>
<br>
<%out.print("The name of user:      "+strusername);%>
<br>
<%out.print("The password of user:      "+strpassword);%>
<br>
<%out.print("The phone number of user:      "+strphone);%>
<br>
<%out.print("The Email of user:     "+stremail);%>
<br>
<%out.print("The user’s work address:   "+strwaddress);%>
<br>
</body>
</html>