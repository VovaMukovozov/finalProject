App.directive("scroll", function ($window) {
    return function(scope, element, attrs, $scope) {
        angular.element($window).bind("scroll", function() {
            $scope.sss = $window.scrollY;
            scope.$apply();
        });
    };
});