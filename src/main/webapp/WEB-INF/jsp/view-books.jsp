<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="l" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<l:layout>
    <jsp:attribute name="title">
      Books
    </jsp:attribute>
    <jsp:attribute name="header">
      <h1>Welcome</h1>
    </jsp:attribute>
    <jsp:attribute name="footer">
      <p id="copyright">Copyright 1927, Future Bits When There Be Bits Inc.</p>
    </jsp:attribute>
    <jsp:body>
        <p>Hi I'm the heart of the message</p>
    </jsp:body>
</l:layout>