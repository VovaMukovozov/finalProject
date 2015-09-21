App.directive('sideAlbums', function() {
    return {
        restrict: 'E',
        templateUrl: 'app/home/_sideAlbums.html',
        controller: 'HomeController',
        replace: 'true'
    };
});