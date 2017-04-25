<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  if(!isLogined){
    req.getResponse().sendRedirect("/login.jsp");
    return;
  }
%>