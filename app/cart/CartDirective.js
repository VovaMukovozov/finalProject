App.directive('cartSide', function() {
    return {
        restrict: 'E',
        templateUrl: 'app/cart/_cart.html',
        controller: 'CartController',
        replace: 'true'
    };
});