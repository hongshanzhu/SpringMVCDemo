<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp"%>
<%@page import="java.util.regex.*"%>
<%

  Object pager = request.getAttribute("pager");
  if(pager == null)return;
  int pageTotal = (Integer)(pager.getClass().getMethod("getPageCount").invoke(pager));
  int total = (Integer)(pager.getClass().getMethod("getTotal").invoke(pager));
  int pageNo = (Integer)(pager.getClass().getMethod("getPageNo").invoke(pager));
  if(pageNo < 1 || pageNo > pageTotal){
    pageNo = 1;
  }
  String url = Stringer.getString(request.getParameter("url"), null);
  if(url==null){
    return;
  }
  StringBuilder sb = new StringBuilder();
  if (pageTotal < 1){
    return;
  }

  int pageNoBegin = pageNo - 3 >= 1 ? pageNo - 3 : 1;
  int pageNoEnd = pageNo + 3 <= pageTotal ? pageNo + 3 : pageTotal;
//sb.append("记录数:<em>"+total+"</em>");
  if(pageNo > 1){
    if(pageNo -1 == 1){
      sb.append("<a href='").append(url).append(".html' class='prevPage'>上一页</a>");
    }else{
      sb.append("<a href='").append(url).append("/").append(pageNo - 1).append(".html' class='prevPage'>上一页</a>");
    }
  }else{
    sb.append("<span class=\"prevPage\">上一页</span>");
  }

  if(pageNoBegin > 3){
    sb.append("<a href='").append(url).append(".html'>1</a>");
    sb.append("…");
  }else{
    for(int i = 1;i < pageNoBegin;i++){
      if(i == 1){
        sb.append("<a href='").append(url).append(".html'>1</a>");
      }else{
        sb.append("<a href='").append(url).append("/").append(i).append(".html'>" + i + "</a>");
      }
    }
  }
  for (int i = pageNoBegin; i <= pageNoEnd; i++) {
    if (i == pageNo) {
      sb.append("<span>").append(pageNo).append("</span>");
    } else {
      if(i == 1){
        sb.append("<a href='").append(url).append(".html'>1</a>");
      }else{
        sb.append("<a href='").append(url).append("/").append(i).append(".html'>" + i + "</a>");
      }
    }
  }

  if(pageNoEnd < pageTotal - 2){
    sb.append("…");
    sb.append("<a href='").append(url).append("/").append(pageTotal).append(".html'>" + pageTotal + "</a>");
  }else{
    for(int i = pageNoEnd+1;i <= pageTotal;i++){
      sb.append("<a href='").append(url).append("/").append(i).append(".html'>" + i + "</a>");
    }
  }

  if(pageNo < pageTotal){
    sb.append("<a href='").append(url).append("/").append(pageNo + 1).append(".html' class='nextPage'>下一页</a>");
  }else{
    sb.append("<span class=\"nextPage\">下一页</span>");
  }
//sb.append("</div>");
  out.println(sb.toString());
%>