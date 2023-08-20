
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <style>
       
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        .content {
            margin: 20px;
        }
    </style>
        <title>Voucher</title>
    </head>
    <body>
            <div class="page">

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tiêu đề</th>
                        <th>Nội dung</th>
                        <th>Tác giả</th>
                        <th>Lượt xem</th>
                        <th>Ngày tạo</th>
                        <th>Xem chi tiết</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listNews}" var="x">
                        <tr>
                            <td>${x.ID}</td>
                            <td>${x.title}</td>
                            <td>${x.content.substring(0, 50)}...</td> 
                            <td>${x.author}</td>
                            <td>${x.views}</td>
                            <td>${x.createdDate}</td>
                            <td><a href="show?id=${x.ID}">Xem chi tiết</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
       </div>
    </body>
</html>
