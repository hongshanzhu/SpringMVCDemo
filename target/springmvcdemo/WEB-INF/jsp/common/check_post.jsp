<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  if(!request.getMethod().equalsIgnoreCase("post")) {
    throw new XiguaException("非法访问");
  }
%>