<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
out.clear();
LoginEnvService loginEnvService = Env.getBean(LoginEnvService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
LoginEnv loginEnv = loginEnvService.load(LoginEnv.class, id);
if(loginEnv == null){
	out.print(getJson(-1, "认证环境不存在"));
	return;
}
loginEnvService.delete(loginEnv);
LogService.log( "删除认证环境:"+loginEnv.getUid()+",token:"+loginEnv.getToken());
out.print(getJson(1, "操作成功"));
%>
