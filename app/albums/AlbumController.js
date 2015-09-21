App.controller('AlbumController',['$scope','$routeParams','albumsSingleton','categoriesSingleton','$filter','CartServices','WishlistServices', function($scope,$routeParams,albumsSingleton,categoriesSingleton,$filter,CartServices,WishlistServices) {
    $scope.albumId = $routeParams.id;
    $scope.categoryId = $routeParams.cat;
    $scope.stock = 0;
    $scope.setItemToWishlist = WishlistServices.setItemToWishlist;
    $scope.getWishList = WishlistServices.getWishList();
    
    // get albums
    albumsSingleton.getAlbums(function(albums){
        $scope.albumsArr = albums['data'];
        $scope.album = $filter('filter')($scope.albumsArr, {album_id: $scope.albumId})[0];
    });
    
    categoriesSingleton.getCategories(function(categories){
        $scope.categoriesArr = categories['data'];
        $scope.category = $filter('filter')($scope.categoriesArr, {genre_id: $scope.categoryId})[0];
    });

    $scope.addToCart = CartServices.setItemInCart;
    
    $scope.checkIfIssetInWishlist = WishlistServices.checkIfIssetInWishlist($scope.albumId);
    
}]);