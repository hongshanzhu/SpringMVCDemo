<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
out.clear();
UserService userService = Env.getBean(UserService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long userId = req.getLong("uid");
String username = req.getString("username");
String truename = req.getString("truename");
String email = req.getString("email");
Date entryTime = req.getDate("entryTime",new Date());
int type = req.getInt("type");
long departmentId = req.getLong("departmentId");

if(Stringer.isAnyEmpty(username,truename,email)){
	out.print(getJson(-1, "必填项不能为空"));
	return;
}

if(!username.matches("[a-z0-9]+")){
	out.print(getJson(-1,"帐号只能包含小写字母和数字"));
	return;
}

User user = userService.getUser(userId);
if(user == null){
	out.print(getJson(-1, "用户不存在"));
	return;
}
user.setUpdateBy(Env.getAdminName(2));
user.setUpdateTime(new Date());
user.setUsername(username);
user.setTruename(truename);
user.setEmail(email);
user.setType(type);
user.setDepartmentId(departmentId);
user.setEntryTime(entryTime);
if(userService.isUsernameInUse(user)){
	out.print(getJson(-1,"帐号已被使用"));
	return;
}
userService.update(user); 
LogService.log( "修改用户:"+user.getUsername());
out.print(getJson(1, "操作成功"));
%>
