<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.xiguaauto.common.env.*"%>
<%@page import="com.xiguaauto.common.util.*"%>
<%@page import="com.xiguaauto.common.email.*"%>
<%@page import="com.xiguaauto.common.cache.*"%>
<%@page import="com.xiguaauto.auth.*"%>
<%@page import="com.xiguaauto.auth.entity.*"%>
<%@page import="com.xiguaauto.auth.service.*"%>
<%@page import="com.xiguaauto.auth.util.*"%>
<%@page import="java.util.*,org.json.*"%>
<%@page import="com.xiguaauto.mysql.*"%>


<c:set var="ROOT" value="http://${header.host}${pageContext.request.contextPath}" scope="request" />
<c:set var="THIS" value="${ROOT}${ACTION != null ? ACTION : pageContext.request.servletPath}" scope="request" />
