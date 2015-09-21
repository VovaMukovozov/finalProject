<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=2024, maximum-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.min.js"></script>
        <script src="https://code.angularjs.org/1.4.4/angular-route.min.js"></script>
        <script src="app/app.js"></script>
        <script src="app/categories/CategoriesDirective.js"></script>
        <script src="app/categories/CategoriesController.js"></script>
        <script src="app/categories/CategoriesServices.js"></script>
        <script src="app/login/LoginController.js"></script>
        <script src="app/albums/AlbumsServices.js"></script>
        <script src="app/home/TopAlbumsDirective.js"></script>
        <script src="app/home/HomeController.js"></script>
        <script src="app/home/SideAlbumsDirective.js"></script>
        <script src="app/home/ContentAlbumsDirective.js"></script>
        <script src="app/scrollDirective.js"></script>
        <script src="app/albums/AlbumController.js"></script>
        <script src="app/cart/CartController.js"></script>
        <script src="app/cart/CartDirective.js"></script>
        <script src="app/cart/CartServices.js"></script>
        <script src="app/checkout/CheckoutController.js"></script>
        <script src="app/wishlist/WishlistServices.js"></script>
        <script src="app/wishlist/WishlistController.js"></script>
        <script src="app/search/SearchController.js"></script>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="app/categories/categories.css">
        <link rel="stylesheet" href="app/login/login.css">
        <link rel="stylesheet" href="app/home/home.css">
        <link rel="stylesheet" href="app/albums/albums.css">
        <link rel="stylesheet" href="app/cart/cart.css">
        <link rel="stylesheet" href="app/checkout/checkout.css">
        <link rel="stylesheet" href="app/wishlist/wishlist.css">
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
        <title>Music Store</title>
    </head>
    <body ng-app="App" ng-controller="myApp">
        <div id="wrapper">
            <div id="main-1">
                <div class="main">
                    <nav id="top-navigation">
                        <ul>
                            <li><a href="#/home">Home</a></li>
                            <li><a href="#/home">My Account</a></li>
                            <li><a href="#/wishlist">My Wishlist</a></li>
                            <li><a href="#/checkout">Checkout</a></li>
                            <li><a href="#/login" ng-show="noLogin">Log In</a></li>
                            <li><a href="" ng-show="yesLogin" ng-click="logOut()">Log Out</a></li>
                        </ul>               
                    </nav>
                    <div style="clear: both;"></div>
                </div>
            </div>
            <div id="main-2">
                <div class="main" style="height: 100px;">
                    <div class="grid-1 grid">
                        <h1 id="site-name"><a href="#/home">Music</a></h1>
                    </div>
                    <div class="grid-2 grid" ng-controller="SearchController">
                        <input id="search" 
                               type="text" 
                               placeholder="Search" 
                               ng-model="searchStr" 
                               ng-keyup="search()"
                               ng-blur="closeBox()" />
                        <div class="search-box" ng-show="result">
                            <div class="search-result" 
                                 ng-repeat="albums in searchArr" 
                                 ng-click="toAlbum(albums.album_id, albums.genre_id)">
                                <img ng-src="{{ albums.image_path }}" />
                                <p class="album-name">{{ albums.album_name | limitTo: 20 }}</p>
                                <p>{{ albums.album_artist | limitTo: 20 }}</p>
                                <p>released {{ albums.album_release_year }}</p>
                            </div>
                        </div>
                    </div>
                    <div class="grid-3 grid">
                        <p>Welcome to our</p>
                        <p>online store</p>
                    </div>
                    <div class="grid-4 grid">
                        <img id="cart-img" src="images/cart.png" />
                        <span id="cart-sum">{{ getCartSum() }}</span>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
            <div id="main-3" ng-view></div>
        </div> 
    </body>
</html>
