<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
</head>
<body>
    <h2>Welcome, ${user.name}</h2>
    <a href="${pageContext.request.contextPath}/books/new">+ Add a book to my shelf!</a>
    <a href="${pageContext.request.contextPath}/logout">Logout</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author Name</th>
                <th>Posted By</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.id}</td>
                    <td><a href="${pageContext.request.contextPath}/books/${book.id}">${book.title}</a></td>
                    <td>${book.author}</td>
                    <td>${book.user.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
