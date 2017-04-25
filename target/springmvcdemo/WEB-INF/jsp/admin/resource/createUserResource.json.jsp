<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
out.clear();
ResourceService resourceService = Env.getBean(ResourceService.class);
RequestWrapper req = new RequestWrapper(pageContext);

long uid = req.getLong("uid");
List<Long> rids = req.getLongList("rid");

if(uid == 0 || Arrayer.isNullOrEmpty(rids)){
	out.print(getJson(-1, "参数不正确"));
	return;
}

//先删除之前的权限
resourceService.unbindResource(uid);
for(long rid : rids){
	int r = req.getInt("r_"+rid);
	int c = req.getInt("c_"+rid);
	int d = req.getInt("d_"+rid);
	int u = req.getInt("u_"+rid);
	if(r == 1 || c == 1 || d == 1 || u == 1){
		resourceService.bindResource(uid, rid, r, c, u, d);
	}
}
LogService.log("创建用户资源:"+uid);
out.print(getJson(1, "操作成功"));
%>
