App.controller('login', ['$scope','$http','$timeout','$location', function($scope,$http,$timeout,$location) {
    $scope.popup = false; // registration popup is not visible
    $scope.passwordValid = false; // confirm password error is not visible
    $scope.loader = false; // loader animation is not visible
    $scope.showForm = true; // registration form in popup is visible
    $scope.regSuccess = false; // registration text success is not visible
    $scope.popupOpacity = false; // popup opacity class
    $scope.newUser = {};
    $scope.user = {};
    
    // when user click submit for registration
    $scope.addUser = function() {
        // check if form is valid
        if($scope.regForm.$valid) {
            // check if password and confirm password is match
            if($scope.newUser.password === $scope.newUser.confirmPassword) {
                $scope.loader = true; // show loader animation
                $scope.popupOpacity = true;
                $scope.passwordValid = false; // hide confirm password error
                
                $http({
                    url: '../../musicStore/api/application/api/newUser',
                    method: "POST",
                    data: JSON.stringify($scope.newUser),
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
                })
                .then(function(response) {
                    /*
                       if server response is success
                       loader animation is hide
                       registration form is hide
                       and show success registratio text
                    */
                    $scope.loader = false;
                    $scope.showForm = false;
                    $scope.regSuccess = true;
                    $scope.popupOpacity = false;
                    $scope.user = {
                        'email': ""
                    };
                    $scope.user.email = $scope.newUser.email;
                    
                    /* 
                        after 5 seconds close registation popup, 
                        registration form back to visible
                        and hide registration success text
                    */
                    $timeout(function(){
                        $scope.popup = false;
                        $scope.showForm = true;
                        $scope.regSuccess = false;
                    },5000);
                }, 
                function(response) { // optional
                    $scope.loader = false;
                    console.log(false);
                });
            }
            else {
                // if confirm password and password does not match show text error
                $scope.passwordValid = true;
            }
        }
    }
    
    $scope.logIn = function() {
        if($scope.loginForm.$valid) {
            $http({
                    url: '../../musicStore/api/application/api/login',
                    method: "POST",
                    data: JSON.stringify($scope.user),
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).success(function() {
                $location.path('/home');
            });
        }
    }
    
}]);