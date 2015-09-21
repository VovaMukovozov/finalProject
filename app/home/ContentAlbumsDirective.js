App.directive('contentAlbums', function() {
    return {
        restrict: 'E',
        templateUrl: 'app/home/_contentAlbums.html',
        controller: 'HomeController',
        replace: 'true'
    };
});