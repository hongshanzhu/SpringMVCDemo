<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
out.clear();
DepartmentService departmentService = Env.getBean(DepartmentService.class);
RequestWrapper req = new RequestWrapper(pageContext);
String name = req.getString("name");
int seq = req.getInt("seq");

if(Stringer.isAnyEmpty(name)){
	out.print(getJson(-1, "必填项不能为空"));
	return;
}

Department obj = new Department();
obj.setName(name);
obj.setSeq(seq);
obj.setCreateTime(new Date());
obj.setCreateBy(Env.getAdminName(2));
obj.setUpdateTime(new Date());
obj.setUpdateBy(Env.getAdminName(2));
departmentService.create(obj);
LogService.log("创建部门:"+name); 
out.print(getJson(1, "操作成功"));
%>
