<%-- 
    Document   : quanlytaikhoan
    Created on : Jun 22, 2022, 10:25:07 AM
    Author     : QuangHai144
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý Tài Khoản</title>
    <link rel="stylesheet" href="fcss/quanlysanphamCss.css">
</head>
<body>
    <div class="main">
        <div class="tieude">
            <ul class="danhsachtieude">
                <li class="cacmuc"><a href="home" class="link">Trang Chủ</a></li>
                
            </ul>
        </div>
        <div class="banggiohang">
            <table>
                <thead>
                  <tr>
                    <th>Mã</th>
                    <th>Tài Khoản</th>
                    <th>Mật Khẩu</th>
                    <th>SĐT</th>
                    <th>Địa Chỉ</th>
                    <th>Xóa</th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listA}" var="a">
                  <tr>
                    <td>${a.id}</td>
                    <td>${a.user}</td>
                    <td>${a.pass}</td>
                    <td>${a.sdt}</td>
                    <td>${a.diachi}</td>
                    <td><a href="xoataikhoan?id=${a.id}" class="chitiet">Xóa</a></td>
                  </tr>
                  </c:forEach>
                  
                  
                </tbody>
              </table>
        </div>
    </div>
</body>
</html>
