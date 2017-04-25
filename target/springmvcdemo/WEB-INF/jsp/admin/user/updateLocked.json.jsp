<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
out.clear();
UserService userService = Env.getBean(UserService.class);
	AdminLoginService adminLoginService = Env.getBean(AdminLoginService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long uid = req.getLong("uid");
User user = userService.getUser(uid);
if(user == null){
	out.print(getJson(-1, "用户不存在"));
	return;
}
//锁定用户或解锁
userService.toggleLock(user);
if(user.getLocked() == 1){
	//锁定用户后，原来的登录状态失效
	Login login = adminLoginService.getLogin(user.getId());
	if(login != null){
		adminLoginService.delete(login);
	}
	LogService.log( "用户锁定:"+user.getUsername());
}else{
	LogService.log("用户解锁:"+user.getUsername());
}
out.print(getJson(1, "操作成功"));
%>
