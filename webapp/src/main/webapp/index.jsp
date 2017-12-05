<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>

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
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta http-equiv="Content-Type" content="text/html charset=gb2312">
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

              <img src="assets/img/DevOpsCoach-logo.png" alt="DevOps" />

                <h1>Simple Java App</h1>
                <h2>Congratulations! Fully automated Pipline as Code is working fine.</h2>
                <h3><%out.print("This should be Zhongwen.");%></h3>
                <p>Your Java application is now running on host;in your own dedicated environment for this DEMO.</p>
                <p>Check below for server details:</p>

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

            <img src="assets/img/maxresdefault.jpg" alt="DevOps" />
            </div>
        </div>

        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>-->
        <script src="assets/js/bootstrap.min.js"></script>
    </body>

</html>
