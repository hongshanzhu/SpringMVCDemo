<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
out.clear();
ResourceService resourceService = Env.getBean(ResourceService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
String name = req.getString("name");
String uriPattern = req.getString("uriPattern");
int seq = req.getInt("seq");

if(Stringer.isAnyEmpty(name,uriPattern)){
	out.print(getJson(-1, "必填项不能为空"));
	return;
}

Resource obj = resourceService.load(Resource.class, id);
if(obj == null){
	out.print(getJson(-1, "找不到资源"));
	return;
}
obj.setName(name);
obj.setSeq(seq);
obj.setUriPattern(uriPattern);
resourceService.update(obj);
LogService.log( "修改资源:"+name);
out.print(getJson(1, "操作成功"));
%>
