<%-- 
    Document   : welcome
    Created on : Feb 16, 2022, 2:46:47 PM
    Author     : duc21
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <link href="./css/css.css" rel="stylesheet" type="text/css"/>
    <script src="./js/js.js" type="text/javascript"></script>
</head>
<body>
    <style>
        .footer-dark {
        padding:50px 0;
        color:#f0f9ff;
        background-color:#282d32;
      }

      .footer-dark h3 {
        margin-top:0;
        margin-bottom:12px;
        font-weight:bold;
        font-size:16px;
      }

      .footer-dark ul {
        padding:0;
        list-style:none;
        line-height:1.6;
        font-size:14px;
        margin-bottom:0;
      }

      .footer-dark ul a {
        color:inherit;
        text-decoration:none;
        opacity:0.6;
      }

      .footer-dark ul a:hover {
        opacity:0.8;
      }

      @media (max-width:767px) {
        .footer-dark .item:not(.social) {
          text-align:center;
          padding-bottom:20px;
        }
      }

      .footer-dark .item.text {
        margin-bottom:36px;
      }

      @media (max-width:767px) {
        .footer-dark .item.text {
          margin-bottom:0;
        }
      }

      .footer-dark .item.text p {
        opacity:0.6;
        margin-bottom:0;
      }

      .footer-dark .item.social {
        text-align:center;
      }

      @media (max-width:991px) {
        .footer-dark .item.social {
          text-align:center;
          margin-top:20px;
        }
      }

      .footer-dark .item.social > a {
        font-size:20px;
        width:36px;
        height:36px;
        line-height:36px;
        display:inline-block;
        text-align:center;
        border-radius:50%;
        box-shadow:0 0 0 1px rgba(255,255,255,0.4);
        margin:0 8px;
        color:#fff;
        opacity:0.75;
      }

      .footer-dark .item.social > a:hover {
        opacity:0.9;
      }

      .footer-dark .copyright {
        text-align:center;
        padding-top:24px;
        opacity:0.3;
        font-size:13px;
        margin-bottom:0;
      }

    </style>
    <div class="header">
        <div class="header-img">
            <img src="./pic/logo.png" width="150px" height="100px" alt="">
        </div>
        <div class="header-nav">
            <ul>
                <li><a href="/"><i class="fa fa-home" style="margin-right: 10px;"></i>Home</a></li>
                <li><a href="/search"><i class="fa fa-cogs" style="margin-right: 10px;"></i>Manage</a></li>
                <li><a href="/report"><i class="fa fa-bullhorn" style="margin-right: 10px;"></i>Report</a></li>
                <li><a href="/contact"><i class="fa fa-envelope" style="margin-right: 10px;"></i>Contact</a></li>
                <li id="signin" onclick="signin_open()"><a href="#">Sign In</a></li>
                <li id="signup" onclick="signup_open()"><a href="#">Sign Up</a></li> 
            </ul>
        </div>
    </div>
    <div id="form_signin">
        <form method="POST" action="/signin">
            <i class="fa-solid fa-x close_item1" onclick="signin_close()"></i>
            <label id="form_signin_title">Sign In</label> <br/>
            
            <input name="username" type="text" id="username" placeholder="Username"  pattern="([0-9a-zA-Z ])*" style="border:0; outline:0; background-color: transparent;border-bottom: 1px solid #fff; width: 80%;"/> <br/>
            <input name="password" type="password" id="password"  placeholder="Password"  pattern="([0-9a-zA-Z ])*" style="border:0; outline:0; background-color: transparent;border-bottom: 1px solid #fff; width: 80%;"/>
            <i onclick="openeye()" class="fa-solid fa-eye eye1"></i> <br/>
            <input type="submit" value="Sign In" onclick="validate()" style="width:80%;"/>
            <br/>
            <p onclick="signupnow()">B???n ch??a c?? t??i kho???n ? <a href="#">????ng k?? ngay</a></p>
        </form>
    </div>
    <div id="form_signup">
        <form method="POST" action="/signup">
            <i class="fa-solid fa-x close_item2" onclick="signup_close()"></i>
            <label id="form_signup_title">Sign up</label> <br/>
            <input name="username1" type="text" id="username1" placeholder="Username" pattern="([0-9a-zA-Z ])*" style="border:0; outline:0; background-color: transparent;border-bottom: 1px solid #fff; width: 80%;"/> <br/>
            <input name="password1" type="password" id="password1" placeholder="Password"  pattern="([0-9a-zA-Z ])*" style="border:0; outline:0; background-color: transparent;border-bottom: 1px solid #fff; width: 80%;"/>
            <i onclick="openeye1()" class="fa-solid fa-eye eye2"></i> <br/>
            <input type="password" id="password2" placeholder="RePassword"  pattern="([0-9a-zA-Z ])*" style="border:0; outline:0; background-color: transparent;border-bottom: 1px solid #fff; width: 80%;"/>
            <i onclick="openeye2()" class="fa-solid fa-eye eye3"></i> <br/>
            <input type="submit" value="Sign up" onclick="validate1()" style="width:80%;"/>
            <br/> 
            <p onclick="signinnow()">B???n ???? c?? t??i kho???n ? <a href="#">????ng nh???p ngay</a> </p>
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
                    <img src="/pic/anhgiaothong1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="/pic/anhgiaothong2 (1).jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="/pic/anhgiaothong3.jpg" class="d-block w-100" alt="...">
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
        <h2>Gi???i thi???u</h2>
        <div class="introduce">
            <img src="/pic/nh?? xe gi??o vi??n.jpg" width="500px" height="500px" alt="">
            <p>Nh???n th???y s??? kh?? kh??n trong c??ng vi???c qu???n l?? nh?? xe c???a c??c tr?????ng THPT, ch??ng t??i
                ???? ph??t tri???n v?? t???o ra 1 web application gi??p x??? l?? ??i???u n??y.
                <br/>
                Ph???n m???m qu???n l?? nh?? xe gi??p ki???m so??t th??ng tin ch???t ch??? v???i tr??n nhi???u b??o t??? t???ng quan ?????n chi ti???t. C??ng ngh??? qu???n tr??? khoa h???c v?? hi???u qu??? ???????c t??ch h???p trong gi???i ph??p qu???n l?? gi??p ng?????i qu???n l?? n???m r?? ???????c t??nh h??nh l???p ?????y xe, d??? d??ng ??i???u h??nh, ph??n lo???i ???????c c??c lo???i xe th??n thi???t, thao t??c ?????t/d???i/s???a/x??a xe nhanh ch??ng.
                <br/>
                ?????c bi???t, ???ng d???ng qu???n l?? xe c???a ch??ng t??i gi??p h??ng xe ho??n to??n ch??? ?????ng trong kh??u qu???n tr??? t??? xa v??n ph??ng, m???i thao t??c ?????u n???m g???n tr??n chi???c m??y t??nh c?? nh??n.
            </p>
        </div>
    </div>
    <div class="cotainer2">
        <h2>L???i ??ch khi s??? d???ng</h2>
        <div class="benefit">
            <div class="benefit-col benefit-col1">L??u tr??? th??ng tin nhanh g???n</div>
            <div class="benefit-col benefit-col2">B???o m???t th??ng tin an to??n</div>
            <div class="benefit-col benefit-col3">Ti???n l???i trong c??ng vi???c qu???n l??</div>

        </div>
    </div>
    <div class="cotainer4">
        <h2>M???i ng?????i n??i g?? khi s??? d???ng</h2>
        <div class="feedback">
            <div class="feedback-all feedback-1">
                <img src="/pic/feedback1.jpg" width="150px" height="150px" alt="">
                <p>Nh??? s??? d???ng h??? th???ng c??ng ngh??? qu???n tr??? nh?? xe tr???c tuy???n c???a MVN c??c nh?? tr?????ng ho???t ?????ng tr??n tru h??n, kh??ng c???n ph???i g???i ??i???n qua l???i, ti???t ki???m ???????c th???i gian v?? chi ph??.</p>
                <h5>- Anh T??ng</h5>
            </div>
            <div class="feedback-all feedback-2">
                <img src="/pic/feedback2.jpg" width="150px" height="150px" alt="">
                <p>Ch??? ???? U40 r???i, ch??a bao gi??? ?????ng v?? m??y t??nh n??n l??c ?????u ng???i l???m. Nh??ng ?????i ng?? MVN h??? tr??? ch??? r???t k??? v?? t???n t??nh. B???n th??n ch??? c??ng th???y ph???n m???m qu???n l?? nh?? xe d??? hi???u v?? d??? s??? d???ng l???m. T??? khi quen v???i vi???c d??ng gi???i ph??p qu???n tr??? c???a MVN th?? th???y ti???n ??ch v?? c??ng nhanh v?? ch??nh x??c.</p>
                <h5>- C?? T??m</h5>
            </div>
            <div class="feedback-all feedback-3">
                <img src="/pic/feedback3.png"width="150px" height="150px"  alt="">
                <p>T??? khi d??ng gi???i ph??p qu???n tr??? h??ng xe v?? ???ng d???ng qu???n l?? xe c???a MVN, ph???n th???ng k?? ??? b??o c??o c???c nhanh v?? ch??nh x??c. Gi??? ????y d?? anh ??? xa nh??ng v???n d??? d??ng n???m ???????c t??nh h??nh nh?? xe th??ng qua qua ph???n m???m nh?? xe MVN, r???t h???u ??ch cho anh!</p>
                <h5>- Th???y H??ng</h5>
            </div>
        </div>
    </div>
    <div class="map-section">
        <img src="/pic/map.jpg" alt="Map">
    </div>   
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">Web design</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Hosting</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About</h3>
                        <ul>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>MVN</h3>
                        <p>We are committed to the quality of this application. Always update and develop more based on everyone's feedback.</p>
                    </div>
                    <div class="col item social"><a href="https://www.facebook.com/nhatduc2110/"><i class="fb fa-brands fa-facebook"></i> </a><a href="https://www.instagram.com/evannnn2110/"><i class="im fa-brands fa-instagram"></i> </a>
                    <a href="https://twitter.com/Nhtc17"><i class="tw fa-brands fa-twitter"></i> </a>    
                    </div>
                </div>
                <p class="copyright">Company Name ?? 2022</p>
            </div>
        </footer>
    </div>
</body>