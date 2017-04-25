<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  if(!request.getMethod().equalsIgnoreCase("post")) {
    out.print(getJson(-9, "非法访问"));
    return;
  }
%>