var App = angular.module('App', ['ngRoute']);

App.config(function($routeProvider) {
    $routeProvider
    
    .when('/', {
        templateUrl: 'pages/home.html'
    })
    
    .when('/home', {
        templateUrl: 'pages/home.html'
    })
    
    .when('/login', {
        templateUrl: 'pages/login.html'
    })
    
    .when('/checkout', {
        templateUrl: 'pages/checkout.html',
        controller: 'CheckoutController'
    })
    
    .when('/albums/:cat/:id', {
        templateUrl: 'pages/album.html',
        controller: 'AlbumController'
    })
    
    .when('/wishlist', {
        templateUrl: 'pages/wishlist.html',
        controller: 'WishlistController'
    })
    
    .when('/category/:cat', {
        templateUrl: 'pages/categories.html',
        controller: 'categories'
    })
});

App.controller('myApp', ['$scope','$http','$location','CartServices',function($scope, $http, $location,CartServices) {
    
    /*
        * all time when user change location path
        function session check if isset user session
    */
    $scope.$on('$locationChangeStart', function(event) {
        $scope.session();
    });
    
    /*
        * session
        * function request api and check if isset user session
    */
    $scope.session = function() {
        $http.get('../../musicStore/api/application/api/session').success(function(response) {
            if(response == 1) {
                $scope.noLogin = false;
                $scope.yesLogin = true;
            }
            else {
                $scope.noLogin = true;
                $scope.yesLogin = false;
            }
        });   
    }
    
    /*
        * logout
        * function request to api and destroy a session
    */
    $scope.logOut = function() {
        $http.get('../musicStore/api/application/api/logout').success(function(data) {
            $scope.session();
        });
    }
    
    /*
        * toAlbum
        * function set 2 parametrs albums's id and genre
        and create location path
    */
    $scope.toAlbum = function(id,genre) {
        $location.path('albums/' + genre + '/' + id);
    }
    
    $scope.addToCart = CartServices.setItemInCart;
    
    $scope.getCartSum = CartServices.getNumCartItems;
    
}]);