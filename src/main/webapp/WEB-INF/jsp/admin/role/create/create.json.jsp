<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  RoleService roleService = Env.getBean(RoleService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  String name = req.getString("name");
  int seq = req.getInt("seq");

  if(Stringer.isAnyEmpty(name)){
    out.print(getJson(-1, "必填项不能为空"));
    return;
  }

  Role obj = new Role();
  obj.setName(name);
  obj.setSeq(seq);
  roleService.create(obj);
  LogService.log( "创建角色:"+name);
  out.print(getJson(1, "操作成功"));
%>