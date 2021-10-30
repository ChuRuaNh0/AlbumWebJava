<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

	<table border="1" style="width: 500px;">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Year</th>
            <th>Infomation</th>
        </tr>
       
       <c:forEach items = "${listAlbum}" var="album">
            <tr>
            	<td>${album.id}</td>
                <td>${album.name_abulm}</td>
                <td>${album.nam}</td>
                <td><c:out value="${album.infor}" /></td>
            </tr>
       </c:forEach>
    </table>
    
</body>
</html>