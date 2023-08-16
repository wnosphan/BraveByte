

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="css/ProfileStyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Dongle&family=Montserrat&family=Raleway:wght@600;700&display=swap"
        rel="stylesheet">
</head>

<body>
    <div class="page">
        <div class="head-page">
            <img src="img/white.jpg" alt="">
            <div class="head-page_logo">BRAVE<ion-icon id='logo' name="shield-outline"></ion-icon>BYTE</div>
            <div class="head-page_select">
                <a href="" class="selection">HOME</a>
                <a href="" class="selection">GAMES</a>
                <a href="" class="selection">CART</a>
                <a href="" class="selection">TRANSACTION</a>
                <a href="" class="selection">LIBRARY</a>

            </div>
            <div class="head-page_user"></div>
        </div>
        <div class="body-page">
            <div class="main-info">
                <div class="avatar-cover">
                    <div class="avatar"></div>
                </div>
                <h1>Arthur Cap <ion-icon name="checkmark-circle"></ion-icon> </h1>
            </div>
            <div class="sub-info">
                <div class="basic-info1">
                    <div class="info info-name"><p>User name : </p>  Arthur Cap</div>
                    <div class="info info-id"><p>ID :</p> #00001</div>
                    <div class="info info-email"><p>Email :</p> thanhdat.ctd2003@gmail.com</div>
                    <div class="info info-number"><p>Phone Number :</p> 0987 654 321</div>
                </div>
                <div class="basic-info2">
                    <div class="basic-info2_element game-bought"><ion-icon name="game-controller-outline"></ion-icon> 15 </div>
                    <div class="basic-info2_element payment-method"> <ion-icon name="card-outline"></ion-icon> <ion-icon name="logo-paypal"></ion-icon> <ion-icon name="qr-code-outline"></ion-icon> <ion-icon name="cash-outline" class = unavailable></ion-icon></div>
                    <div class="basic-info2_element linked"> <ion-icon name="mail-outline" class = unavailable></ion-icon><ion-icon name="logo-facebook" class = unavailable></ion-icon><ion-icon name="logo-discord" class = unavailable></ion-icon><ion-icon name="logo-instagram" class = unavailable></ion-icon></div>
                    <button class = edit-info>Edit information <ion-icon name="create-outline"></ion-icon></button>
                </div>
                
            </div>
            <div class="high-edit">
                <button class = edit-pass> User Secutity </button>
                <div class="change-password_backgr">
                    <div class="change-password">
                        <h1>Change Password</h1>
                        <input type="password" placeholder="Old password">
                        <input type="password" placeholder="New password">
                        <input type="password" placeholder="Type new password again">
                        <button>Confirm change</button>
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="foot-page"></div>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="js/Profile-script.js"></script>
</body>

</html>
