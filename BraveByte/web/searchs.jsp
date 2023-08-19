<%-- 
    Document   : games
    Created on : 18-Aug-2023, 20:40:15
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Game"%>
<%@page import="model.Pagging"%>
<%@page import="dao.PaggingDAO"%>
<%@page import="dao.GameDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BraveByte</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Dongle&family=Montserrat&family=Raleway:wght@600;700&display=swap"
            rel="stylesheet">
<!--        <link rel="stylesheet" href="Style/bootstrap.css" type="text/css"/>
        <link rel="stylesheet" href="Style/bootstrap.min.css" type="text/css"/>-->
        <link rel="stylesheet" href="Style/GamesStyle.css">
    </head>
    <body>
        <%
            GameDAO gdao = new GameDAO();
            ArrayList<Game> searchs = (ArrayList<Game>) request.getAttribute("searchs");

            if (searchs == null) {
                searchs = gdao.getGameList();
            }
        %>
        <div class="page">
            <%@include file="header.jsp" %>

            <div class="body-page">
                <div class="body-up">
                    <form action="main" method="get" class="formlogin">
                        <div class="search-input">
                            <input type="text" class="search" placeholder="<%= (request.getAttribute("keyword") == null) ? "Enter game name or publicer" : request.getAttribute("keyword")%>" name="txtSearch">
                            <div class="search-price">
                                <p>Minimum : </p><input type="text" name="minimum" placeholder="<%= (request.getAttribute("minimum") == null) ? "" : request.getAttribute("minimum")%>">
                                <p>Maximum : </p> <input type="text" name="maximum" placeholder="<%= (request.getAttribute("maximum") == null) ? "" : request.getAttribute("maximum")%>">
                            </div>
                        </div>
                        <div class="search-choose">
                            <div class="sort-buttons">
                                <label class="category action">
                                    <input type="radio" name="kind" id="adventure" value="1">
                                    <p class=check-mark>Action</p>
                                </label>
                                <label class="category adventure">
                                    <input type="radio" name="kind" id="adventure" value="2">
                                    <p class=check-mark>Adventure</p>
                                </label>
                                <label class="category shooter">
                                    <input type="radio" name="kind" id="adventure" value="3">
                                    <p class=check-mark>Shooter</p>
                                </label>
                            </div>
                            <div class="sort-buttons">
                                <label class="sort up-alphabet">
                                    <input type="radio" name="sort" id="up-alphabet" value="1">
                                    <p class=check-mark>A - Z</p>
                                </label>
                                <label class="sort down-alphabet">
                                    <input type="radio" name="sort" id="down-alphabet" value="2">
                                    <p class=check-mark>Z -A</p>
                                </label>

                                <label class="sort up-price">
                                    <input type="radio" name="sort" id="up-price" value="3">
                                    <p class=check-mark><ion-icon name="arrow-up-outline"></ion-icon>$</p>
                                </label>
                                <label class="sort down-price">
                                    <input type="radio" name="sort" id="down-price" value="4">
                                    <p class=check-mark><ion-icon name="arrow-down-outline"></ion-icon>$</p>
                                </label>
                            </div>

                            <button class = search-button name="action" value="search"> <ion-icon name="search-outline"></ion-icon> </button>
                        </div>
                    </form>
                </div>
                <div class="body-left">
                    <h1 style="color: red;">Games</h1>
                    <div class="games">
                        <%
                            for (Game game : searchs) {
                        %>
                        <div class="game RDR2" style="background-image: url('<%= game.getPoster()%>');">
                            <div class="black-bgr"></div>
                            <div class="game-rate">
                                <ion-icon name="bookmark-outline"></ion-icon>
                                <p><%= game.getRating()%></p>
                            </div>
                            <div class="game-descript">
                                <h2 class="game-name"><%= game.getTitle()%></h2>
                                <h3 class="game-price">Price : <%= game.getPrice()%>$</h3>
                            </div>
                            <div class="game-button">
                                <button class="game-info"> <ion-icon name="alert-outline"></ion-icon> </button>
                                <button class="add-to-cart"> <ion-icon name="cart-outline"></ion-icon></button>
                            </div>

                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>

            </div>
            <%@include file="footer.jsp" %>
        </div>
        <script src="Script/HomeScript.js"></script>
<!--        <script src="Script/bootstrap.js"></script>
        <script src="Script/bootstrap.bundle.js"></script>
        <script src="Script/bootstrap.min.js"></script>-->
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    </body>
</html>
