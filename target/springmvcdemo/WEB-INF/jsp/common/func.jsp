<%@page import="org.json.*,java.util.*"%>
<%!
  public String getJson(int code,String msg){
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("code",code);
    map.put("msg",msg);
    return new JSONObject(map).toString();
  }

  public String getErrHtml(String msg){
    return "<div style='text-align:center;font-weight:bold;color:red;height:150px;vertical-align:middle;'>"+msg+"</div>";
  }
%>