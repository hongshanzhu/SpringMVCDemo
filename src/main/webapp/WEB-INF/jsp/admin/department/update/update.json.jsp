<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
out.clear();
DepartmentService departmentService = Env.getBean(DepartmentService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
String name = req.getString("name");
int seq = req.getInt("seq");

if(Stringer.isAnyEmpty(name)){
	out.print(getJson(-1, "必填项不能为空"));
	return;
}

Department obj = departmentService.getDepartment(id);
if(obj == null){
	out.print(getJson(-1, "找不到部门"));
	return;
}
obj.setName(name);
obj.setSeq(seq);
obj.setUpdateTime(new Date());
obj.setUpdateBy(Env.getAdminName(2)); 
departmentService.update(obj);
LogService.log("修改部门:"+name);
out.print(getJson(1, "操作成功"));
%>
