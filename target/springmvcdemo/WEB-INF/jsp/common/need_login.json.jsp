<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

  if(!isLogined){
    out.clear();
    out.print(getJson(-8, "请先登陆再操作"));
    return;
  }


%>