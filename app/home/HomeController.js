App.controller('HomeController', ['$scope','albumsSingleton', function($scope, albumsSingleton) {
    // big banner sub-details is hide
    $scope.bigBannerSubDetails = false;
    $scope.activeValue = false;
    
    // get albums
    albumsSingleton.getAlbums(function(albums){
        $scope.albumsArr = albums['data'];
    });
    
    $scope.bigBannerHover = function() {
        $scope.bigBannerSubDetails = true;
    }
    
    $scope.bigBannerLeave = function() {
        $scope.bigBannerSubDetails = false;
    }
    
    /*
        * smallBannerHover
        * when mouse hover on small banner
        function set value(index element) and know what element is active
        * @param (int) (value) index element from
        ng-repeat
    */
    $scope.smallBannerHover = function(value) {
        $scope.activeValue = value;
    }
    
    /*
        * smallBannerLeave
        * when mouse leave from small banner
    */
    $scope.smallBannerLeave = function() {
        $scope.activeValue = false;
    }
    
}]);