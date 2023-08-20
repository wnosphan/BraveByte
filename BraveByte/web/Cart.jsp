<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Style/CartStyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Montserrat&family=Raleway:wght@600;700&display=swap" rel="stylesheet">
</head>

<body>
    <div class="page">
        <div class="head-page">
            <img src="/Img/white.jpg" alt="">
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
            <h1 > Cart </h1>
            <div class="cart-field">
                <div class="titles">
                    <div class="section blank"></div>
                    <div class="section title-name">Name</div>
                    <div class="section category">Category</div>
                    <div class="section ">Price</div>
                    <div class="section buttons"> </div>
                </div>

                <div class="game gow" style="background-image: url('img/god-of-war-ragnarök-3840x2160-8677.jpg');">
                    <div class="background"></div>
                    <div class="section blank"></div>
                    <div class="section name">God Of War | Ranarok </div>
                    <div class="section category"><p>Adventure</p> <p>Action</p> </div>
                    <div class="section price">60$</div>
                    <div class="section buttons"> <button class="more-info"> <ion-icon name="alert-circle-outline"></ion-icon> </button><button class = delete> <ion-icon name="close-circle-outline"></ion-icon> </button> </div>
                </div>

                <div class="game gow" style="background-image: url('img/hitman.jpg');">
                    <div class="background"></div>
                    <div class="section blank"></div>
                    <div class="section name"> HITMAN 3 </div>
                    <div class="section category"> <p>Action</p> </div>
                    <div class="section price">60$</div>
                    <div class="section buttons"> <button class="more-info"> <ion-icon name="alert-circle-outline"></ion-icon> </button><button class = delete> <ion-icon name="close-circle-outline"></ion-icon> </button> </div>
                </div>

            </div>
            <div class="sumarize">
                <div class="total-amount">
                    <h3> Total Amount</h3>
                    <p>2</p>
                </div>

                <div class="total-price">
                    <h3>Total Price :</h3>
                    <p>120$</p>
                </div>
                <div class="payment">
                    <h3>Payment</h3>
                    <div class="payment-methods">
                        <label class="payment-method QR">
                            <input type="radio" name="payment" id="up-alphabet">
                            <p class=check-mark> <ion-icon name="qr-code-outline"></ion-icon> </p>
                        </label>
                        <label class="payment-method banking">
                            <input type="radio" name="payment" id="down-alphabet">
                            <p class=check-mark> <ion-icon name="card-outline"></ion-icon> </p>
                        </label>
                        
                        <label class="payment-method paypal">
                            <input type="radio" name="payment" id="up-price">
                            <p class=check-mark> <ion-icon name="logo-paypal"></ion-icon> </p>
                        </label>
                    </div>
                </div>

                <button class="purchase"> <ion-icon name="download-outline"></ion-icon> </button>

            </div>
        </div>
    </div>
    <script src="Script/CartScript.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>

</html>
