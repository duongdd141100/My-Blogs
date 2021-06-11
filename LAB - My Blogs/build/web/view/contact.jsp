<%-- 
    Document   : contact
    Created on : May 17, 2021, 8:30:46 PM
    Author     : Do Duc Duong
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
                <form action="contact" method="POST" id="formSendMessage" onsubmit="alertNotification()">
                    <fieldset>
                        <legend>All fields is required</legend>
                        <table>
                            <tr>
                                <th>Name: </th>
                                <td><input type="text" name="name" required id="inputName">
                                    <span id="errorName" style="display: none; color: red;">Please enter Name shorter 50 chars!</span>
                                </td>
                            </tr>
                            <tr>
                                <th>Email: </th>
                                <td><input type="text" name="email" required id="inputEmail">
                                    <span id="errorEmail" style="display: none; color: red;">Please enter correct your email!</span>
                                    <span id="errorEmailLength" style="display: none; color: red;">Please enter email shorter 50 chars!</span>
                                </td>
                            </tr>
                            <tr>
                                <th>Phone: </th>
                                <td><input type="number" name="phone" required id="inputPhone">
                                    <span id="errorPhone" style="display: none; color: red;">Please enter Phone number has 10 numbers!</span>
                                </td>
                            </tr>
                            <tr>
                                <th>Company: </th>
                                <td><input type="text" name="company" required id="inputCompany">
                                    <span id="errorCompany" style="display: none; color: red;">Please enter company shorter 30 chars!</span>
                                </td>
                            </tr>
                            <tr>
                                <th>Message: </th>
                                <td><textarea type="text" name="message" id="inputMessage" required></textarea>
                                    <span id="errorMess" style="display: none; color: red;">Please enter message shorter 100 chars!</span>
                                </td>
                            </tr>
                        </table>
                        <input type="button" value="send" id="submitFormSendMessage" onclick="validateValue()">
                    </fieldset>
                </form>
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

    function validateValue() {
        var check = true
        if (document.getElementById('inputName').value.length > 50) {
            document.getElementById("errorName").style.display = 'block'
            check = false
        }
        if (document.getElementById('inputEmail').value.length > 50) {
            document.getElementById("errorEmailLength").style.display = 'block'
            check = false
        } else {
            if (!validateEmail(document.getElementById('inputEmail').value)) {
                document.getElementById("errorEmail").style.display = 'block'
                check = false
            }
        }
        if (document.getElementById('inputPhone').value.length != 10) {
            document.getElementById("errorPhone").style.display = 'block'
            check = false
        }
        if (document.getElementById('inputCompany').value.length > 30) {
            document.getElementById("errorCompany").style.display = 'block'
            check = false
        }
        if (document.getElementById('inputMessage').value.length > 100) {
            document.getElementById("errorMess").style.display = 'block'
            check = false
        }
        if (check) {
            alert("Insert Successfully")
            document.getElementById('formSendMessage').submit()
        }

    }
    function validateEmail(email) {
        const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }
</script>
