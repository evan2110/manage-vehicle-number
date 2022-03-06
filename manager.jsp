<%-- 
    Document   : manager
    Created on : Feb 28, 2022, 9:55:40 PM
    Author     : duc21
--%>

<%@page import="model.Student"%>
<%@page import="model.Classes"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <%  ArrayList<Classes> classes = (ArrayList<Classes>)request.getAttribute("classes");
            ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students");
            int id = (Integer)request.getAttribute("id");
        %>
        <script>
            function submitForm()
            {
                document.getElementById("searchForm").submit();
            }
            
            function deleteStudent(id, vid)
            {
                var result = confirm("Are you sure?");
                if(result)
                {
                    window.location.href = "delete?id=" + id + "&vid=" + vid;
                }
            }
        </script>
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
            <form  method="GET" id="searchForm"> 
            Class <select name="id" onchange="submitForm();">
                <option value="-1" >Please select a Class</option>
                <% for (Classes d : classes) {
                %>
                <option 
                    <%=(d.getId()==id)?"selected=\"selected\"":""%>
                    value="<%=d.getId()%>" ><%=d.getName()%></option>
                <%}%>
            </select>
        </form>
        <br/>
        <table border="1px">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Dob</td>
                <td>Vehicle's ID</td>
                <td>Vehicle's Name</td>
                <td>Vehicle's Color</td>
                <td></td>
            </tr>
            <% for (Student s : students) {
            %>
            <tr>
                <td><%=s.getId() %></td>
                <td><%=s.getName()%></td>
                <td><%=s.getDob()%></td>
                <td><%=s.getVehicle().getId() %></td>
                <td><%=s.getVehicle().getName()%></td>
                <td><%=s.getVehicle().getColor()%></td>
                <td><a href="edit?id=<%=s.getId()%>">Edit</a>
                    <a href="#" onclick="deleteStudent(<%=s.getId()%>, <%=s.getVehicle().getId()%>)">Delete</a>
                </td>
            </tr>
            <%}%>
        </table> 
        <a href="insert">Insert</a>
        </div>
        <div class="footer">
            <h3>Liên hệ với chúng tôi:</h3> 
            <p>Sdt: 0977096708
            <br/> Email: ducdnhe153579@fpt.edu.vn
            <br/> Địa Chỉ liên hệ: xã Phú Thủy - huyện Lệ Thủy - tỉnh Quảng Bình  </p> 
        </div> 
    </body>
</html>
