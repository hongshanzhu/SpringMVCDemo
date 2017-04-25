<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
out.clear();
	out.print(getJson(-1, "禁止删除用户"));
//UserService userService = Env.getBean(UserService.class);
//RequestWrapper req = new RequestWrapper(pageContext);
//long userId = req.getLong("uid");
//User user = userService.getUser(userId);
//if(user == null){
//	out.print(getJson(-1, "用户不存在"));
//	return;
//}
//
//userService.delete(user);
//LogService.log("删除用户:"+user.getUsername());
//out.print(getJson(1, "操作成功"));
%>
