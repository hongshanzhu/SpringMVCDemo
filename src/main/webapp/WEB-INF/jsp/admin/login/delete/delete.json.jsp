<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
	out.clear();
	AdminLoginService adminLoginService = Env.getBean(AdminLoginService.class);
	RequestWrapper req = new RequestWrapper(pageContext);
	long id = req.getLong("id");
	Login login = adminLoginService.getLoginById(id);
	if(login == null){
		out.print(getJson(-1, "当前用户不在线"));
		return;
	}
	adminLoginService.delete(login);
	LogService.log("退出用户登录:"+login.getUid());
	out.print(getJson(1, "操作成功"));
%>
