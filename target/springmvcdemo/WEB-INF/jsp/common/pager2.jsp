<%@ page contentType="text/html;charset=UTF-8" language="java" %><%
  Object pager = request.getAttribute("pager");
  if(pager == null)return;
  int pageTotal = (Integer)(pager.getClass().getMethod("getPageCount").invoke(pager));
  int total = (Integer)(pager.getClass().getMethod("getTotal").invoke(pager));
  int pageNo = (Integer)(pager.getClass().getMethod("getPageNo").invoke(pager));
  int pageSize = (Integer)(pager.getClass().getMethod("getPageSize").invoke(pager));
%>
<script>
  function go2page(fm){
    var pn = parseInt(fm.pageNo.value);
    var ps = parseInt(fm.pageSize.value);
    if(isNaN(ps) || ps > 500 || ps < 1){
      ps = 20;
    }
    if(isNaN(pn) || pn < 1 || pn > <%=pageTotal%>){
      pn = 1;
    }
    var loc = location.href;
    loc = loc.replace(/[&\?]pageNo=[^&]*/g,"").replace(/[&\?]pageSize=[^&]*/g,"");
    loc = loc += ("&pageNo="+pn+"&pageSize="+ps);
    loc = loc.replace(/jsp&/g,"jsp?");
    //alert(loc);
    location.href = loc;
  }
</script>
<%
  if(pageNo < 1 || pageNo > pageTotal){
    pageNo = 1;
  }
  String uri = (String)pageContext.findAttribute("uri");
  if(uri == null){
    uri = request.getServletPath();
  }
  if (uri.indexOf("/WEB-INF/jsp") != -1) {
    uri = uri.replace("/WEB-INF/jsp", "").replace(".jsp", ".htm");
  }
  String url = request.getContextPath() + uri + "?" + (request.getQueryString() != null ? request.getQueryString() : "").replaceAll("&*(pageNo)=[^&]*","");
//System.out.println("----------------url="+url);
  StringBuilder sb = new StringBuilder();
  sb.append("<form action='"+url+"' method='get'>");
  if (pageTotal <= 1){
    sb.append("<div class='my_page'>记录数:<span>"+total+"</span>");
    sb.append(" 第<input name='pageNo' value='"+pageNo+"' size='3' onkeypress='if(event.keyCode == 13) go2page(this.form)'>页 每页<input name='pageSize' value='"+pageSize+"' size='3' onkeypress='if(event.keyCode == 13) go2page(this.form)'>条");
    sb.append("</div>");
    out.println(sb.toString());
    return;
  }

  int pageNoBegin = pageNo - 2 >= 1 ? pageNo - 2 : 1;
  int pageNoEnd = pageNo + 2 <= pageTotal ? pageNo + 2 : pageTotal;
  sb.append("<div class='my_page'>记录数:<span>"+total+"</span> ");
  if(pageNo > 1){
    sb.append("<a href='").append(url).append("&pageNo="+(pageNo - 1)).append("'>上一页</a> ");
  }else{
    sb.append("上一页 ");
  }

  if(pageNoBegin > 3){
    sb.append("<a href='").append(url).append("&pageNo=1").append("'>1</a> ");
    sb.append("<a href='").append(url).append("&pageNo=2").append("'>2</a> ");
    sb.append("… ");
  }else{
    for(int i = 1;i < pageNoBegin;i++){
      sb.append("<a href='").append(url).append("&pageNo="+i).append("'>" + i + "</a> ");
    }
  }

  for (int i = pageNoBegin; i <= pageNoEnd; i++) {
    if (i == pageNo) {
      sb.append("<span>").append(pageNo).append("</span> ");
    } else {
      sb.append("<a href='").append(url).append("&pageNo="+i).append("'>" + i + "</a> ");
    }
  }

  if(pageNoEnd < pageTotal - 2){
    sb.append("… ");
    sb.append("<a href='").append(url).append("&pageNo="+(pageTotal - 1)).append("'>" + (pageTotal - 1) + "</a> ");
    sb.append("<a href='").append(url).append("&pageNo="+pageTotal).append("'>" + pageTotal + "</a> ");
  }else{
    for(int i = pageNoEnd+1;i <= pageTotal;i++){
      sb.append("<a href='").append(url).append("&pageNo="+i).append("'>" + i + "</a> ");
    }
  }

  if(pageNo < pageTotal){
    sb.append("<a href='").append(url).append("&pageNo="+(pageNo + 1)).append("'>下一页</a> ");
  }else{
    sb.append("下一页 ");
  }
  sb.append(" 第<input name='pageNo' value='"+pageNo+"' size='3' onkeypress='if(event.keyCode == 13) go2page(this.form)'>页 每页<input name='pageSize' value='"+pageSize+"' size='3' onkeypress='if(event.keyCode == 13) go2page(this.form)'>条");
  sb.append("</div>");
  sb.append("</form>");
  out.println(sb.toString().replaceAll("\\?&+","?"));
%>