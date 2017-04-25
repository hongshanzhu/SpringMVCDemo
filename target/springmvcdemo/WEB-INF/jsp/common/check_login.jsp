<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  RequestWrapper req = new RequestWrapper(pageContext);
  AccountService accountService = Env.getBean(AccountService.class);
  LoginService loginService = Env.getBean(LoginService.class);
  boolean isLogined = false;
  LoginInfo loginInfo = loginService.getOnline(req);
  Account loginAccount = null;
  if(loginInfo != null){
    loginAccount = loginInfo.getAccount();
    if(loginAccount != null){
      isLogined = true;
      request.setAttribute("isLogined",isLogined);
      request.setAttribute("loginAccount",loginAccount);
    }else{
      loginService.clientLogout(req);
    }
  }else{
    loginService.clientLogout(req);
  }

%>