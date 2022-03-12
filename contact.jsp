<%-- 
    Document   : contact
    Created on : Mar 10, 2022, 9:57:31 PM
    Author     : duc21
--%>

<%@page import="model.Account"%>
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
    </head>
    <body>
        <style>
            body {
                background-color: #d7eaf7;
            }
            .cotainer{
                height: 400px;
                margin-left: 30px;
                margin-top: 100px;
            }
            .cotainer h3 {
                margin-bottom: 30px;
            }
            
            #map {
            width: 100%;
            height: 400px;
            background-color: grey;
            margin-top: 50px;
            }
            .contact{
                display: flex;
                margin-top: 100px;
                border-top: solid 10px white;
            }
            .fb, .im, .tw {
                padding: 10px;
                font-size: 30px;
            }
            .contact_text {
                font-weight: bolder;
                font-size: 15px;
            }
            .im {
                color: red;
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
                    <li><a href="#">Hello</a></li>
                </ul>
            </div>
        </div>
        <div class="contact">
        <div class="cotainer">
        <h3>Liên hệ với chúng tôi:</h3> 
            <p>Sdt: 0977096708
            <br/> Email: ducdnhe153579@fpt.edu.vn
            <br/> Địa Chỉ liên hệ: xã Phú Thủy - huyện Lệ Thủy - tỉnh Quảng Bình  </p> 
            <p class="contact_text">Kết Nối Với Chúng Tôi</p>
            <a href="https://www.facebook.com/nhatduc2110/"><i class="fb fa-brands fa-facebook"></i> </a>
            <a href="https://www.instagram.com/evannnn2110/"><i class="im fa-brands fa-instagram"></i> </a>
            <a href="https://twitter.com/Nhtc17"><i class="tw fa-brands fa-twitter"></i> </a>    
        </div>
         <div id="map"></div> 
         </div>
         <script>
        function initMap() {
          var uluru = {lat: 17.209574, lng: 106.714716};
          var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 17,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
        }
       </script>
       <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDyaJlNbUCNuVO-_wxfcgcWdAnojMcOs1E&callback=initMap">
       </script>
    </body>
</html>
