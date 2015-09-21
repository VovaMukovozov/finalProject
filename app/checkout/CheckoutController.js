App.controller('CheckoutController', ['$scope','CartServices','$http','$location', function($scope,CartServices,$http,$location) {
    $scope.visibilBillingForm = true;
    $scope.visibilPaymenForm = false;
    $scope.visibilOrder = false;
    $scope.buttonPay = true;
    $scope.showFormCard = false;
    $scope.cardType = "Select Credit Card";
    $scope.checkout = {};
    
    $scope.session = function() {
        $http.get('../../musicStore/api/application/api/session').success(function(response) {
            if(response != 1) {
                $location.path('/login');
            }
        });   
    }
    
    $scope.session();
    
    $scope.methodCard = function() {
        $scope.buttonPay = false;
        $scope.showFormCard = true;
    }
    
    $scope.methodCheck = function() {
        $scope.showFormCard = false;
        $scope.buttonPay = true;
    }
   
    
    $scope.form1 = function() {
        if($scope.formBillingInfo.$valid) {
            $scope.visibilBillingForm = false;
            $scope.visibilPaymenForm = true;
        }
    }
    
    $scope.checkMethod = function() {
        $scope.visibilBillingForm = false;
        $scope.visibilPaymenForm = false;
        $scope.visibilOrder = true;
        $scope.checkout.order_payment_method = 'Check';
    }
    
    $scope.cardSub = function() {
        if($scope.cardForm.$valid) {
            $scope.visibilBillingForm = false;
            $scope.visibilPaymenForm = false;
            $scope.visibilOrder = true;
            $scope.checkout.order_payment_method = 'Credit Card';
        }
    }
    
    $scope.changeBillingInfo = function() {
        $scope.visibilBillingForm = true;
            $scope.visibilPaymenForm = false;
            $scope.visibilOrder = false;
    }
    
    $scope.changePaymentInfo = function() {
        $scope.visibilBillingForm = false;
            $scope.visibilPaymenForm = true;
            $scope.visibilOrder = false;
    }
    
    $scope.placeOrder = function() {
         $http({
            url: '../musicStore/api/application/api/order',
            method: "POST",
            data: JSON.stringify($scope.checkout),
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).success(function() {
                CartServices.clearToCart();
                $location.path('/home');
            });
    }
    
    $scope.albumsCart = CartServices.getCart();
    
    $scope.albumsIdList = [];
    
    $scope.albumsCart.forEach(function(item) {
        $scope.albumsIdList.push(item.album_id);
    });
    
    $scope.checkout['albums_id'] = $scope.albumsIdList;
    $scope.checkout['order_total'] = CartServices.getSubTotal();
    $scope.checkout['order_payment_method'] = $scope.order_payment_method;
    
    $scope.subtotal = CartServices.getSubTotal();
    
}]);