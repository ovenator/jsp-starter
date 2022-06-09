<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="l" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
        <section class="w-full max-w-2xl px-6 py-4 mx-auto bg-white rounded-md shadow-md dark:bg-gray-800">
            <form:form action="/validator/result" method="POST" modelAttribute="messageForm">
                <h2 class="text-3xl font-semibold text-center text-gray-800 dark:text-white">Validator</h2>

                <div class="mt-6 ">

                    <div class="w-full mt-4">
                        <form:label path="message" class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200">Message</form:label>

                        <form:textarea path="message" class="block w-full h-40 px-4 py-2 text-gray-700 bg-white border rounded-md dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600 focus:border-blue-400 dark:focus:border-blue-300 focus:outline-none focus:ring focus:ring-blue-300 focus:ring-opacity-40"></form:textarea>
                    </div>

                    <div class="flex justify-center mt-6">
                        <button class="px-4 py-2 text-white transition-colors duration-200 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600" type="submit">Validate</button>
                    </div>
                </div>
            </form:form>

        </section>
    </jsp:body>
</l:layout>