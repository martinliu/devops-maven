<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Simple Java App</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <style>body {margin-top: 40px; background-color: #333;}</style>
        <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet">
        <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    </head>

    <body>
        <div class="container">
            <div class="hero-unit">
                <h1>Simple Java App</h1>
                <h2>Congratulations!</h2>
                <p>Your Java application is now running on host;in your own dedicated environment for this DEMO.</p>
                <p>Check below for server details:</p>

                <%
          String SERVER_NAME = request.getServerName();
          String SERVER_ADDR = request.getLocalAddr();
          String SERVER_SOFTWARE = getServletContext().getServerInfo();
          String SERVER_PROTOCOL = request.getProtocol();
          Integer SERVER_PORT = request.getServerPort();
          String REQUEST_METHOD = request.getMethod();
          String PATH_INFO = request.getPathInfo();
          String PATH_TRANSLATED = request.getPathTranslated();
          String SCRIPT_NAME = request.getServletPath();
          String DOCUMENT_ROOT = request.getRealPath("/");
          String QUERY_STRING = request.getQueryString();
          String REMOTE_HOST = request.getRemoteHost();
          String REMOTE_ADDR = request.getRemoteAddr();
          String AUTH_TYPE = request.getAuthType();
          String REMOTE_USER = request.getRemoteUser();
          String CONTENT_TYPE = request.getContentType();
          Integer CONTENT_LENGTH = request.getContentLength();
          String HTTP_ACCEPT = request.getHeader("Accept");
          String HTTP_USER_AGENT = request.getHeader("User-Agent");
          String HTTP_REFERER = request.getHeader("Referer");
          HashMap infoMap = new HashMap();
          infoMap.put("SERVER_NAME", SERVER_NAME);
          infoMap.put("SERVER_ADDR", SERVER_ADDR);
          infoMap.put("SERVER_SOFTWARE", SERVER_SOFTWARE);
          infoMap.put("SERVER_PROTOCOL", SERVER_PROTOCOL);
          infoMap.put("SERVER_PORT", SERVER_PORT);
          infoMap.put("REQUEST_METHOD", REQUEST_METHOD);
          infoMap.put("PATH_INFO", PATH_INFO);
          infoMap.put("PATH_TRANSLATED", PATH_TRANSLATED);
          infoMap.put("SCRIPT_NAME", SCRIPT_NAME);
          infoMap.put("DOCUMENT_ROOT", DOCUMENT_ROOT);
          infoMap.put("QUERY_STRING", QUERY_STRING);
          infoMap.put("REMOTE_HOST", REMOTE_HOST);
          infoMap.put("REMOTE_ADDR", REMOTE_ADDR);
          infoMap.put("AUTH_TYPE", AUTH_TYPE);
          infoMap.put("REMOTE_USER", REMOTE_USER);
          infoMap.put("CONTENT_TYPE", CONTENT_TYPE);
          infoMap.put("CONTENT_LENGTH", CONTENT_LENGTH);
          infoMap.put("HTTP_ACCEPT", HTTP_ACCEPT);
          infoMap.put("HTTP_USER_AGENT", HTTP_USER_AGENT);
          infoMap.put("HTTP_REFERER", HTTP_REFERER);
          Iterator it = infoMap.keySet().iterator();
          %>
          <table border="1">
          <%
          while (it.hasNext()) {
          Object o = it.next();
          %>
          <tr>
          <td>
          <%=o%>
          <td>
          <%=infoMap.get(o)%>
          </td>
          </tr>
          <%
          }
          %>
          </table>

          <form id="formToTC" action="http://xxx.com/login" method="post">
              Username: <input id="username" name="username" required="true" type="text" value=""/>
              <br/> <br/>
              Password: <input id="password" name="password" required="true" type="text" value=""/>
              <br/> <br/>
           <input type="hidden" name="serverip" value= <%=request.getLocalAddr()%> />
              <input type="submit" value="Login" class="btn btn-primary"/>
              <br/>
              <span style="color:red;"></span>
          </form>
            </div>
        </div>






        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>-->
        <script src="assets/js/bootstrap.min.js"></script>
    </body>

</html>
