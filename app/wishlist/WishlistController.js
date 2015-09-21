App.controller('WishlistController', ['$scope','WishlistServices', function($scope,WishlistServices) {
    
    $scope.wishlistAlbums = WishlistServices.getWishList();
    $scope.deleteItem = WishlistServices.removeItem;
    $scope.numItems = WishlistServices.getNumItemsInWishlist();
}]);