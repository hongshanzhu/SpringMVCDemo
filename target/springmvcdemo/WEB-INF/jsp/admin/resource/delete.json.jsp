<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
out.clear();
ResourceService resourceService = Env.getBean(ResourceService.class);
UserService userService = Env.getBean(UserService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
Resource resource = resourceService.getResource(id);
if(resource == null){
	out.print(getJson(-1, "找不到资源"));
	return;
}
resourceService.delete(resource);
LogService.log("删除资源:"+resource.getName());
out.print(getJson(1, "操作成功"));
%>
