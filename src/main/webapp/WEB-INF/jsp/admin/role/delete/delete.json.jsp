<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  RoleService roleService = Env.getBean(RoleService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  long id = req.getLong("id");
  Role role= roleService.load(Role.class,id);
  if(role == null){
    out.print(getJson(-1, "找不到角色"));
    return;
  }
  roleService.delete(role);
  LogService.log("删除角色:"+role.getName());
  out.print(getJson(1, "操作成功"));
%>

