<%-- 
    Document   : home
    Created on : May 10, 2021, 10:02:18 AM
    Author     : mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div id="title">
            <h1>My Blogs</h1>
        </div>
        <div id="menu">
            <a href="home">Home</a>
            <a href="contact">Contact</a>
        </div>
        <div id='body'>
            <div id='content'>
                <div id="cate-title">
                    <span style="color: green;">Category ${requestScope.cateName} · </span>
                    <span>Full Category</span>
                </div>

                <div id='blog-title'>
                    <h2 id='blog-name'>${blog.name}</h2>
                    <p id='blog-info'>Post on ${blog.postDate}</p>
                </div>
                <div id='blog-content'>
                    <span><img src="image/img03.jpg" alt=""/>${blog.content}</span>
                </div>
                <hr>
                <div>
                    <c:forEach items="${listBlogsFooter}" var="l">
                        <form action="home" method="GET">
                            <input type="hidden" value="${l.id}" name="blogId">
                            <input type="submit" value="• ${l.name}"><span> Posted on ${l.postDate}</span>
                        </form>
                    </c:forEach>
                </div>
            </div>
            <div id='categories'>
                <h3>Categories</h3>
                <hr>
                <div id="cate-menu">

                    <c:forEach items="${requestScope.listCate}" var="l">
                        <form action="home" method="POST" id="formCate">
                            <input type="hidden" value="${l.id}" name="cateId">
                            <button onclick="submitForm()"><img src="image/img01.jpg">${l.name}</button>
                        </form>
                    </c:forEach>
                </div>

            </div>
        </div>

    </body>
</html>

<script>
    function submitForm() {
        document.getElementById("formCate").submit()
    }
</script>