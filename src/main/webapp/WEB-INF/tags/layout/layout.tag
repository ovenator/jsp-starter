<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="title" fragment="true" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style-generated.css"/>
    <script src="${pageContext.request.contextPath}/js/bundle-generated.js"></script>
    <title><jsp:invoke fragment="title"/></title>
</head>
<body>
<div id="pageheader">
    <jsp:invoke fragment="header"/>
</div>
<div id="body">
    <jsp:doBody/>
</div>
<div id="pagefooter">
    <jsp:invoke fragment="footer"/>
</div>
</body>
</html>