<!doctype html>
<%@ include file="/WEB-INF/sitemesh/common/taglib.jsp"%>
<html>
    <head>
        <meta http-equiv="Cache-Control" content="no-store"/>
        <meta http-equiv="Pragma" content="no-cache"/>
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">
        <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
        <style>
          .active {
              background-color: cornflowerblue;
          }
        </style>
        <decorator:head />
    </head>
    <body>
        <%--
        Passing arbitrary data between JSP pages and SiteMesh decorators
        https://weblogs.java.net/blog/zarar/archive/2006/01/passing_arbitra.html

        Using this technique, I will stoe the top nav and lower nav values in the
        page, use SiteMesh to set it then put it in the request scope so other
        --%>
        <c:set var="currentTopNavMenu" scope="request"><decorator:getProperty property="page.topnav"/></c:set>
        <c:set var="currentLowNavMenu" scope="request"><decorator:getProperty property="page.lownav"/></c:set>

        <div id='topnav'><%@ include file="common/topnav.jsp" %></div>
        <div id='lownav'><jsp:include page="common/lownav-${requestScope.currentLowNavMenu}.jsp"/></div>

        <decorator:body />

    </body>
</html>