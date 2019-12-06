<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%--
    Document   : index
    Created on : Jun 9, 2010, 3:59:32 PM
    Author     : tgiunipero
--%>

<%--<sql:query var="categories" dataSource="jdbc/AffableBean">
    SELECT * FROM category
</sql:query>--%>

            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p >Welcome to the online home of the Latham Hat Store.</p>

                    <p>Enjoy browsing and learning more about our unique home delivery
                        service bringing you various of hat.</p>
                </div>
            </div>


<div id="indexRightColumn">
    <c:forEach var="category" items="${categories}">
        <div class="categoryBox">
            <a href="category?${category.id}">

                <span class="categoryLabelText">${category.name}</span>

                <img src="${initParam.categoryImagePath}${category.name}.jpg"
                     alt="${category.name}">
            </a>
        </div>
    </c:forEach>
</div>