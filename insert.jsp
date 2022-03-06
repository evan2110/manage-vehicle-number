<%-- 
    Document   : insert
    Created on : Mar 3, 2022, 11:14:40 AM
    Author     : duc21
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Classes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <title>Quan ly nha xe</title>
        <link rel="icon" href="/pic/logo.png" type="image/x-icon" />
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width" />
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/7a93c85040.js" crossorigin="anonymous"></script>
        <link href="../css/css.css" rel="stylesheet" type="text/css"/>
        <script src="../js/js.js" type="text/javascript"></script>
        <%
            ArrayList<Classes> classes = (ArrayList<Classes>) request.getAttribute("classes");
        %>
    </head>
    <body>
        <div class="header">
            <div class="header-img">
                <img src="../pic/logo.png" width="150px" height="100px" alt="">
            </div>
            <div class="header-nav">
                <ul>
                    <li><a href="/">Trang Chủ</a></li>
                    <li><a href="/search">Quản Lý</a></li>
                    <li><a href="#">Báo Cáo</a></li>
                    <li><a href="#">Liên Hệ</a></li>
                    <li><a href="#">Hello</a></li>
                </ul>
            </div>
        </div>
        <div class="cotainer">
        <form action="insert" method="POST">
            Id: <input type="text" name="id"/> <br/>
            Name: <input type="text" name="name"/> <br/>
            <br/>
            Dob: <input type="date" name="dob"/> <br/>
            Vehicle's ID: <input type="text" name="vid"/> <br/>
            Vehicle's Name: <input type="text" name="vname"/> <br/>
            Vehicle's Color: <input type="text" name="color"/> <br/>
            Class <select name="cid">
                <% for (Classes c : classes) {
                %>
                <option value="<%=c.getId()%>"><%=c.getName()%></option>
                <%}%>
            </select>
            <br/>
            <input type="submit" value="Save"/>
        </form>
        </div>
            <div class="footer">
            <h3>Liên hệ với chúng tôi:</h3> 
            <p>Sdt: 0977096708
            <br/> Email: ducdnhe153579@fpt.edu.vn
            <br/> Địa Chỉ liên hệ: xã Phú Thủy - huyện Lệ Thủy - tỉnh Quảng Bình  </p> 
        </div> 
    </body>
</html>
