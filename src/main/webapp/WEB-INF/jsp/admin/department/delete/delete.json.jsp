<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
out.clear();
DepartmentService departmentService = Env.getBean(DepartmentService.class);
UserService userService = Env.getBean(UserService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
Department department = departmentService.getDepartment(id);
if(department == null){
	out.print(getJson(-1, "找不到部门"));
	return;
}
List<User> users = userService.getUsersByDepartment(id);
if(users != null && users.size() > 0){
	out.print(getJson(-1, "该部门已被用户引用，不能删除"));
	return;
}
departmentService.delete(department);
LogService.log("删除部门:"+department.getName());
out.print(getJson(1, "操作成功"));
%>
