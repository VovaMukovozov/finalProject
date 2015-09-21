App.controller('CartController',['$scope','CartServices', function($scope,CartServices) {
    
    $scope.itemsInCart = CartServices.getNumCartItems;
    $scope.subTotal = CartServices.getSubTotal;
    $scope.albumsStorage = CartServices.getCart();
    $scope.removeItem = CartServices.removeAlbum;
    
}]);