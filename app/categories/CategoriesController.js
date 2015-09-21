App.controller('categories', ['$scope', 'categoriesSingleton','$routeParams','$filter','albumsSingleton','WishlistServices', function($scope, categoriesSingleton,$routeParams,$filter,albumsSingleton,WishlistServices) {
    
    $scope.categoryId = $routeParams.cat;
    
    categoriesSingleton.getCategories(function(categories){
        $scope.categoriesArr = categories['data'];
        $scope.category = $filter('filter')($scope.categoriesArr, {genre_id: $scope.categoryId})[0];
    }); 
    
    albumsSingleton.getAlbums(function(albums) {
        $scope.albumsByCategory = []
        $scope.albums = albums['data'];
        $scope.albums.forEach(function(item) {
            if(item.genre_id == $scope.categoryId) {
                $scope.albumsByCategory.push(item);   
            }
        });
        $scope.numItems = $scope.albumsByCategory.length;
    });
    
    $scope.addToWishlist = WishlistServices.setItemToWishlist;
    
}]);