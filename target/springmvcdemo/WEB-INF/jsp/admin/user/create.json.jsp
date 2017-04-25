<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
out.clear();
UserService userService = Env.getBean(UserService.class);
RequestWrapper req = new RequestWrapper(pageContext);
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

User user = new User();
user.setStatus(1);//缺省在职
user.setPassword(PasswordHash.createHash(userService.pwdByUsername(username)));
user.setLastChgPwdTime(new Date(0l));//缺省要修改密码
user.setCreateTime(new Date());
user.setCreateBy(Env.getAdminName(2));
user.setUpdateTime(new Date());
user.setUpdateBy(Env.getAdminName(2));
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
userService.create(user);
LogService.log( "创建用户:"+user.getUsername());
out.print(getJson(1, "操作成功"));
%>
