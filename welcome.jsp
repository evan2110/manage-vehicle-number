<%-- 
    Document   : welcome
    Created on : Feb 16, 2022, 2:46:47 PM
    Author     : duc21
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Quan ly nha xe</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width" />
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/7a93c85040.js" crossorigin="anonymous"></script>
    <% ArrayList<Account> Accounts = (ArrayList<Account>)request.getAttribute("Account");
    %>
</head>
<body>
<style>
        html {
    width: 100vw;
    height: 100vh;
    overflow-x: hidden;
}

body {
    width: 100vw;
    height: 100vh;
}

*{
    margin:0px;
    padding: 0px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}

.header {
    width: 100vw;
    height: 150px;
    display: flex;
    background-color: #d7eaf7;
}

.header-img {
    width: 15%;
}

.header-nav {
    width: 70%;
}
.header-create {
    width: 20%;
}

.header-nav ul{
    display: flex;
    margin-top: 50px;
    width: 100%;
}

.header-nav ul li{
    list-style-type: none;
    width: 16%;
}

.header-nav ul li a:hover {
    background-color:#94caee;
}

.header-nav ul li a {
    color: #045056;
    font-size: 20px;
    text-decoration: none;
    background-color: #c4b897;
    padding: 7px;
    border-radius: 10px;

}

.header-create ul{
    display: flex;
    margin-top: 33px;
    width: 100%;
}

.header-create ul li{
    list-style-type: none;
    width:50%;
}

.header-create ul li a:hover {
    background-color:#94caee;
}

.header-create ul li a {
    color: #045056;
    font-size: 19px;
    text-decoration: none;
    background-color: #c4b897;
    padding: 7px;
    border-radius: 10px;
}

.cotainer1 {
    margin-top: 2px;
}

.cotainer2 h2 {
    text-align: center;
    margin-top: 150px;
}

.benefit-col {
    height: 300px;
    border: 5px solid rgba(53, 98, 170, 0.1);
    background-size: cover;
    width: 20%;
    margin-right: 30px;
    text-align: center;
    color: #94caee;
    font-size: 20px;
    font-weight: 700;
    border-radius: 10px;
}

.benefit-col1 {
    background-image: url(./pic/luutru.png);
}

.benefit-col2 {
    background-image: url(./pic/baomat.jpg);
}

.benefit-col3 {
    background-image: url(./pic/quanly.png);
}

.benefit {
    display: flex;
    justify-content: center;
    margin-top: 50px;
}

.cotainer3 {
    margin-top: 50px;
}

.cotainer3 h2 {
    text-align: center;
}

.introduce {
    display: flex;
    justify-content: center;
    margin-top: 50px;
}

.introduce img {
    margin-right: 10%;
}

.introduce p {
    margin-top: 50px;
    font-size: 15px;
    word-spacing: 10px;
    width: 40%;
    font-weight: 700;
}

.cotainer4 {
    margin-top: 150px;
    text-align: center;
}

.feedback {
    display: flex;
    justify-content: center;
    margin-top: 50px;
}

.feedback-all {
    width: 30%;
    border-left: solid black 1px ;
    border-right: solid black 1px ;
}

.feedback-all p {
    width: 60%;
    margin-left: 20%;
    font-style: italic;
}

.feedback-all img {
    margin-right: 3%;
    margin-bottom: 15px;
    border-radius: 100px;
}

.map-section img {
    margin-top: 100px;
    width: 100%;
}

.footer {
    height: 300px;
    background-color: #94caee;
}

.footer h3 {
    margin-left: 100px;
}

.footer p {
    display: inline-block;
    background-color: rgb(100, 95, 95);
    color: #94caee;
    border-radius: 50px;
    padding: 50px;
    margin-top: 2%;
    margin-left: 3%;
}

#form_signin {
    display: none;
    width: 400px;
    height: 300px;
    background-color: #9ebed3;
    position: absolute;
    z-index: 1;
    top:300px;
    left:800px;
    box-shadow: 10px 10px 5px #aaaaaa;
    border-radius: 20px;
    position: fixed;
}

#form_signin form {
    margin-top: 20px;
    margin-left: 20px;
}

#form_signin form input {
    padding: 3px;
    margin-top: 20px;
}

#form_signin_title {
    margin-left: 150px;
    font-size: 23px;
}

#form_signin form p {
    margin-top: 15px;
}

#form_signup {
    display: none;
    width: 400px;
    height: 300px;
    background-color: #9ebed3;
    position: absolute;
    z-index: 1;
    top:300px;
    left:800px;
    box-shadow: 10px 10px 5px #aaaaaa;
    border-radius: 20px;
    position: fixed;
}

#form_signup form {
    margin-top: 1px;
    margin-left: 20px;
}

#form_signup form input {
    padding: 3px;
    margin-top: 15px;
}

#form_signup_title {
    margin-left: 100px;
    font-size: 23px;
}

#form_signup form p {
    margin-top: 0px;
}

.close_item1 {
    margin-left: 90%;
}

.close_item1:hover{
    cursor: pointer;
}

.close_item2 {
    margin-left: 90%;
    margin-top: 10px;
}

.close_item2:hover{
    cursor: pointer;
}

.eye1 {
    margin-left: 2%;
}

#congra_signup {
    font-size: 14px;
    color:red;
    margin-left: 100px;
    display: none;
}

#congra_signin {
    font-size: 14px;
    color:red;
    margin-left: 100px;
    display: none;
}
    </style>
  <script>
    function signin_close(){
      var change = document.getElementById("form_signin");
                change.style.display = "none";
            } 
    function signup_close(){
      var change = document.getElementById("form_signup");
                change.style.display = "none";
            }

    function signin_open(){
                var change = document.getElementById("form_signin");
                change.style.display = "block";
            }
    function validate() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    if(username=== "") {
    alert("Vui lòng nhập tên!");
    return false;
    }
    if(password === "") {
    alert("Vui lòng nhập mật khẩu!");
    return false;
    }
    }

    function signup_open(){
                var change = document.getElementById("form_signup");
                change.style.display = "block";
                var change2 = document.getElementById("form_signin");
                change2.style.display = "none";
                }
    function validate1() {
    var username = document.getElementById("username1").value;
    var password = document.getElementById("password1").value;
    var password1 = document.getElementById("password2").value;


    if(username=== "") {
    alert("Vui lòng nhập tên!");
    return false;
    }
    if(password === "") {
    alert("Vui lòng nhập mật khẩu!");
    return false;
    }
    if(password1 === "") {
    alert("Vui lòng nhập lại mật khẩu!");
    return false;
    }
    if(password1 !== password){
      alert("Mật khẩu bạn vừa nhập không khớp!");
      return false;
    }
    }
    function openeye(){
      var password = document.getElementById("password");    
      if(password.getAttribute("type") ===  "password"){
        password.setAttribute("type","text");
      } else {
        password.setAttribute("type","password");
      }
      
    }
    function openeye1(){
      var password = document.getElementById("password1");    
      if(password.getAttribute("type") ===  "password"){
        password.setAttribute("type","text");
      } else {
        password.setAttribute("type","password");
      }
      
    }
    function openeye2(){
      var password = document.getElementById("password2");     
      if(password.getAttribute("type") ===  "password"){
        password.setAttribute("type","text");
      } else {
        password.setAttribute("type","password");
      }
      
    }

    function signupnow(){
      var change = document.getElementById("form_signin");
                change.style.display = "none";
      var change2 = document.getElementById("form_signup");
                 change2.style.display = "block";
    }
    function signinnow(){
      var change = document.getElementById("form_signup");
                change.style.display = "none";
      var change = document.getElementById("form_signin");
      change.style.display = "block";
    }
    function openCongra_Signup(){
        var change = document.getElementById("congra_signup");
        change.style.display = "inline-block";
    }
    function openCongra_Signin(){
        var change = document.getElementById("congra_signin");
        change.style.display = "inline-block";
    }
    
  </script>
    <div class="header">
            <div class="header-img">
                    <img src="./pic/logo.png" width="150px" height="100px" alt="">
            </div>
            <div class="header-nav">
                <ul>
                    <li><a href="#">Trang Chủ</a></li>
                    <li><a href="#">Quản Lý</a></li>
                    <li><a href="#">Báo Cáo</a></li>
                    <li><a href="#">Liên Hệ</a></li>
                    <li onclick="signin_open()"><a href="#">Đăng nhập</a></li>
                    <li onclick="signup_open()"><a href="#">Đăng Ký</a></li> 
                </ul>
            </div>
    </div>
    <div id="form_signin">
      <form>
          <i class="fa-solid fa-x close_item1" onclick="signin_close(); deletedata()"></i>
          <label id="form_signin_title">Sign In</label> <br/>
          <label>Username</label>
          <input type="text" id="username" placeholder="username"/> <br/>
          <label>Password</label>
          <input type="password" id="password" placeholder="password"/>
          <i onclick="openeye()" class="fa-solid fa-eye eye1"></i> <br/>
          <input type="submit" value="Sign In" onclick="validate(); openCongra_Signin()"/>
          <span id="congra_signin">Bạn đã đăng nhập thành công</span>
          <br/> 
          <p onclick="signupnow()">Bạn chưa có tài khoản ? <a href="#">Đăng ký ngay</a></p>
      </form>
  </div>
  <div id="form_signup">
      <form method="POST" action="./signup">
      <i class="fa-solid fa-x close_item2" onclick="signup_close()"></i>
        <label id="form_signup_title">Sign up</label> <br/>
        <label>Username</label>
        <input name="username1" type="text" id="username1" placeholder="username"/> <br/>
        <label>Password</label>
        <input name="password1" type="password" id="password1" placeholder="password"/>
        <i onclick="openeye1()" class="fa-solid fa-eye eye2"></i> <br/>
        <label>Re-password</label>  
        <input type="password" id="password2" placeholder="Re-password"/>
        <i onclick="openeye2()" class="fa-solid fa-eye eye3"></i> <br/>
        <input type="submit" value="Sign up" onclick="validate1(); openCongra_Signup();"/>
        <span id="congra_signup">Bạn đã đăng ký thành công</span>
        <br/> 
        <p onclick="signinnow()">Bạn đã có tài khoản ? <a href="#">Đăng nhập ngay</a> </p>
    </form>
</div>
    <div class="cotainer1">
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active" data-bs-interval="10000">
                <img src="./pic/anhgiaothong1.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                </div>
              </div>
              <div class="carousel-item" data-bs-interval="2000">
                <img src="./pic/anhgiaothong2 (1).jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                </div>
              </div>
              <div class="carousel-item">
                <img src="./pic/anhgiaothong3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
    </div>
    <div class="cotainer3">
      <h2>Giới thiệu</h2>
      <div class="introduce">
        <img src="./pic/nhà xe giáo viên.jpg" width="500px" height="500px" alt="">
        <p>Nhận thấy sự khó khăn trong công việc quản lý nhà xe của các trường THPT, chúng tôi
          đã phát triển và tạo ra 1 web application giúp xử lý điều này.
          <br/>
          Phần mềm quản lý nhà xe giúp kiểm soát thông tin chặt chẽ với trên nhiều báo từ tổng quan đến chi tiết. Công nghệ quản trị khoa học và hiệu quả được tích hợp trong giải pháp quản lý giúp người quản lý nắm rõ được tình hình lấp đầy xe, dễ dàng điều hành, phân loại được các loại xe thân thiết, thao tác đặt/dời/sửa/xóa xe nhanh chóng.
          <br/>
          Đặc biệt, ứng dụng quản lý xe của chúng tôi giúp hãng xe hoàn toàn chủ động trong khâu quản trị từ xa văn phòng, mọi thao tác đều nằm gọn trên chiếc máy tính cá nhân.
        </p>
      </div>
    </div>
    <div class="cotainer2">
        <h2>Lợi ích khi sử dụng</h2>
        <div class="benefit">
          <div class="benefit-col benefit-col1">Lưu trữ thông tin nhanh gọn</div>
          <div class="benefit-col benefit-col2">Bảo mật thông tin an toàn</div>
          <div class="benefit-col benefit-col3">Tiện lợi trong công việc quản lý</div>

        </div>
    </div>
    <div class="cotainer4">
      <h2>Mọi người nói gì khi sử dụng</h2>
      <div class="feedback">
        <div class="feedback-all feedback-1">
          <img src="./pic/feedback1.jpg" width="150px" height="150px" alt="">
          <p>Nhờ sử dụng hệ thống công nghệ quản trị nhà xe trực tuyến của MVN các nhà trường hoạt động trơn tru hơn, không cần phải gọi điện qua lại, tiết kiệm được thời gian và chi phí.</p>
          <h5>- Anh Tùng</h5>
        </div>
        <div class="feedback-all feedback-2">
          <img src="./pic/feedback2.jpg" width="150px" height="150px" alt="">
          <p>Chị đã U40 rồi, chưa bao giờ đụng vô máy tính nên lúc đầu ngại lắm. Nhưng đội ngũ MVN hỗ trợ chị rất kỹ và tận tình. Bản thân chị cũng thấy phần mềm quản lý nhà xe dễ hiểu và dễ sử dụng lắm. Từ khi quen với việc dùng giải pháp quản trị của MVN thì thấy tiện ích vô cùng nhanh và chính xác.</p>
          <h5>- Cô Tâm</h5>
        </div>
        <div class="feedback-all feedback-3">
          <img src="./pic/feedback3.png"width="150px" height="150px"  alt="">
          <p>Từ khi dùng giải pháp quản trị hãng xe và ứng dụng quản lý xe của MVN, phần thống kê – báo cáo cực nhanh và chính xác. Giờ đây dù anh ở xa nhưng vẫn dễ dàng nắm được tình hình nhà xe thông qua qua phần mềm nhà xe MVN, rất hữu ích cho anh!</p>
          <h5>- Thầy Hùng</h5>
        </div>
      </div>
    </div>
    <div class="map-section">
      <img src="./pic/map.jpg" alt="Map">
  </div>   
    <div class="footer">
      <h3>Liên hệ với chúng tôi:</h3> 
      <p>Sdt: 0977096708
      <br/> Email: ducdnhe153579@fpt.edu.vn
      <br/> Địa Chỉ liên hệ: xã Phú Thủy - huyện Lệ Thủy - tỉnh Quảng Bình  </p> 
    </div>
</body>