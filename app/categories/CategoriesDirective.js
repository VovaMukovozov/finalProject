App.directive('categoriesMusic', function() {
    return {
        restrict: 'E',
        templateUrl: 'app/categories/_categories.html',
        controller: 'categories',
        replace: 'true'
    };
});