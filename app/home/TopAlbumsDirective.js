App.directive('topAlbums', function() {
    return {
        restrict: 'E',
        templateUrl: 'app/home/_topAlbums.html',
        controller: 'HomeController',
        replace: 'true'
    };
});