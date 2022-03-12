<%-- 
    Document   : edit
    Created on : Mar 5, 2022, 11:21:16 AM
    Author     : duc21
--%>

<%@page import="model.Account"%>
<%@page import="model.Student"%>
<%@page import="model.Classes"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <link href="./css/css.css" rel="stylesheet" type="text/css"/>
    <script src="./js/js.js" type="text/javascript"></script>
        <%
            ArrayList<Classes> classes = (ArrayList<Classes>) request.getAttribute("classes");
            Student s = (Student)request.getAttribute("student");
            Account account = (Account)request.getSession().getAttribute("account");
        %>
    </head>
    <body>
        <style>
            .cotainer {
                height: 700px;
                margin-left: 650px;
                margin-top: 100px;
            }
            .cotainer form {
                background-color: #d7eaf7;
                display: inline-block;
                padding: 90px;
                font-weight: bolder;
                border: 2px solid #87CEFA;
            }
            .cotainer form input {
                margin-bottom: 10px;
                padding: 5px;
            }
            #submit:hover {
                 background-color: #d7eaf7; 
            }
        </style>
        <div class="header">
            <div class="header-img">
                <img src="../pic/logo.png" width="150px" height="100px" alt="">
            </div>
            <div class="header-nav">
                <ul>
                    <li><a href="/">Trang Chủ</a></li>
                    <li><a href="/search">Quản Lý</a></li>
                    <li><a href="/report">Báo Cáo</a></li>
                    <li><a href="/contact">Liên Hệ</a></li>
                    <li><a href="#">Hello <%=account.getUsername()%></a></li>
                    <li><a href="/logout">Đăng Xuất</a></li>
                </ul>
            </div>
        </div>
        <div class="cotainer">
        <form action="edit" method="POST">
            Id: <%=s.getId()%> <input type="hidden" name="id" value="<%=s.getId()%>" /> <br/>
            Name: <input type="text" name="name" value="<%=s.getName()%>" required pattern="([a-zA-Z ])*"/> <br/>
            Dob: <input type="date" name="dob" value="<%=s.getDob()%>" /> <br/>
            Vehicle's ID: <%=s.getVehicle().getId()%> <input type="hidden" name="vid" value="<%=s.getVehicle().getId()%>" /> <br/>
            Vehicle's Name: <input type="text" name="vname" value="<%=s.getVehicle().getName()%>" required pattern="([a-zA-Z ])*"/> <br/>
            Vehicle's Color: <input type="text" name="color" value="<%=s.getVehicle().getColor()%>" required pattern="([a-zA-Z ])*"/> <br/>

            Class <select name="cid">
                <% for (Classes c : classes) {
                %>
                <option
                    <%=(c.getId() == s.getClasses().getId())?"selected=\"selected\"":""%>
                    value="<%=c.getId()%>"><%=c.getName()%></option>
                <%}%>
            </select>
            <br/>
            <input id="submit" type="submit" value="Save" style="margin-top: 30px;"/>
        </form>
        </div>
            </div>
            <div class="footer">
            <h3>Liên hệ với chúng tôi:</h3> 
            <p>Sdt: 0977096708
            <br/> Email: ducdnhe153579@fpt.edu.vn
            <br/> Địa Chỉ liên hệ: xã Phú Thủy - huyện Lệ Thủy - tỉnh Quảng Bình  </p> 
        </div> 
    </body>
</html>
