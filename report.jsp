<%-- 
    Document   : report
    Created on : Mar 10, 2022, 11:36:03 AM
    Author     : duc21
--%>

<%@page import="model.Account"%>
<%@page import="model.Report"%>
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
    <% ArrayList<Report> Reports = (ArrayList<Report>)request.getAttribute("listpage");
    Account account = (Account)request.getSession().getAttribute("account");
    int endP = (Integer)request.getAttribute("endP");
    %>
    </head>
    <style>
        .cotainer {
                height: 600px;
                margin-left: 700px;
                margin-top: 100px;
                font-size: 18px;
                font-weight: bolder;
            }
        .cotainer table {
                width: 50%;
                margin-bottom: 30px;
        }
        .cotainer a {
            text-decoration: none;
            background-color: #d7eaf7;
            padding: 3px;
            border-radius: 10px;
        }
    </style>
    <body>
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
        <form action="report" method="POST">
                Input your's feedback: <input type="text" name="report" required pattern="([0-9a-zA-Z ])*"/> <br/>  
                <input style="margin-left: 300px; margin-top: 20px;" type="submit" value="Save"/> <br/>
        </form>
            <br/>
        <table style="border:2px solid black;text-align: center;">
            
                    <tr>
                        <td style="color: blue;"><p style="background-color: #d7eaf7; display: inline-block; border-radius: 10px; margin-top: 10px;">FeedBack: </p></td> <br/>
                    </tr>
                        <% for (Report r : Reports) {
                          %>  
                    <tr>
                        <td><%=r.getContent() %></td> 
                        <%}%>
                    </tr>
        </table>
            Page: <% for (int i = 1; i <= endP; i++) {
            %>
            <a href="report?index2=<%=i%>"><%=i%></a>
            <%}%> <br/>
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
